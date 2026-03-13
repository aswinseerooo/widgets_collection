import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:widgets_collection/domain/services/gemini_service.dart';
import 'package:widgets_collection/presentation/components/common_glass_container/common_glass_container.dart';
import 'package:widgets_collection/presentation/features/packages/firebase_ai/widgets/firebase_ai_typing_indicator.dart';

class FirebaseAIBody extends StatefulWidget {
  const FirebaseAIBody({super.key});

  @override
  State<FirebaseAIBody> createState() => _FirebaseAIBodyState();
}

class _FirebaseAIBodyState extends State<FirebaseAIBody> {
  final controller = TextEditingController();
  final scrollController = ScrollController();
  final GeminiService service = GeminiService();

  final List<Map<String, dynamic>> messages = [];

  File? selectedImage;

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> sendMessage() async {
    final text = controller.text.trim();
    if (text.isEmpty && selectedImage == null) return;

    setState(() {
      messages.add({"role": "user", "text": text, "image": selectedImage});
    });

    controller.clear();
    final image = selectedImage;
    selectedImage = null;

    _scrollToBottom();

    messages.add({"role": "ai", "text": "", "isTyping": true});

    setState(() {});

    final aiIndex = messages.length - 1;

    if (image != null) {
      final bytes = await image.readAsBytes();

      service.sendImagePromptStream(text, bytes).listen((chunk) {
        setState(() {
          messages[aiIndex]["isTyping"] = false;
          messages[aiIndex]["text"] += chunk;
        });
        _scrollToBottom();
      });
    } else {
      service.sendMessageStream(text).listen((chunk) {
        setState(() {
          messages[aiIndex]["isTyping"] = false;
          messages[aiIndex]["text"] += chunk;
        });
        _scrollToBottom();
      });
    }
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();

    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  Widget _buildMessage(Map<String, dynamic> message) {
    final isUser = message["role"] == "user";
    final isTyping = message["isTyping"] == true;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(12),
        constraints: const BoxConstraints(maxWidth: 280),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: isTyping
            ? const FirebaseAiTypingIndicator()
            : Column(
                crossAxisAlignment: isUser
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  if (message["image"] != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Image.file(message["image"], height: 120),
                    ),
                  Text(
                    message["text"] ?? "",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildInputBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        children: [
          CommonGlassContainer(
            onTap: pickImage,
            child: const Icon(Icons.image, color: Colors.white),
          ),

          const SizedBox(width: 8),

          Expanded(
            child: CommonGlassContainer(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                controller: controller,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: "Ask Gemini...",
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          const SizedBox(width: 8),

          CommonGlassContainer(
            onTap: sendMessage,
            child: const Icon(Icons.send, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildImagePreview() {
    if (selectedImage == null) return const SizedBox();

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Image.file(selectedImage!, height: 100),
          Positioned(
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedImage = null;
                });
              },
              child: const CircleAvatar(
                radius: 12,
                backgroundColor: Colors.black54,
                child: Icon(Icons.close, size: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: scrollController,
            padding: const EdgeInsets.all(16),
            itemCount: messages.length,
            itemBuilder: (_, index) {
              return _buildMessage(messages[index]);
            },
          ),
        ),

        _buildImagePreview(),

        _buildInputBar(),
      ],
    );
  }
}