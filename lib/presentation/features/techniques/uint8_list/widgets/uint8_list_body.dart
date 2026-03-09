import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'uint8_list_explanation_section.dart';

class Uint8ListBody extends StatefulWidget {
  const Uint8ListBody({super.key});

  @override
  State<Uint8ListBody> createState() => _Uint8ListBodyState();
}

class _Uint8ListBodyState extends State<Uint8ListBody> {
  final Dio dio = Dio();

  Uint8List? imageBytes;
  bool isLoading = false;

  Future<void> loadImage() async {
    setState(() {
      isLoading = true;
    });

    try {
      final response = await dio.get(
        "https://picsum.photos/400",
        options: Options(responseType: ResponseType.bytes),
      );

      setState(() {
        imageBytes = Uint8List.fromList(response.data);
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Failed to load image")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Uint8ListExplanationSection(),

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              if (isLoading) const CircularProgressIndicator(),

              if (imageBytes != null) ...[
                const Text(
                  "Image loaded from Uint8List",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),

                const SizedBox(height: 10),

                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.memory(
                    imageBytes!,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "Image Size: ${imageBytes!.lengthInBytes} bytes",
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: loadImage,
                child: const Text("Load Image as Uint8List"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
