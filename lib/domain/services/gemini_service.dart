import 'dart:typed_data';
import 'package:firebase_ai/firebase_ai.dart';

class GeminiService {
  final _model = FirebaseAI.googleAI().generativeModel(
    model: 'gemini-3-flash-preview',
  );

  late final ChatSession _chat = _model.startChat();

  Future<String> sendMessage(String message) async {
    try {
      final response = await _chat.sendMessage(Content.text(message));
      return response.text ?? "No response";
    } catch (e) {
      return "Error: $e";
    }
  }

  Stream<String> sendMessageStream(String message) async* {
    try {
      final stream = _chat.sendMessageStream(Content.text(message));

      await for (final chunk in stream) {
        final text = chunk.text;
        if (text != null) {
          yield text;
        }
      }
    } catch (e) {
      yield "Error: $e";
    }
  }

  Stream<String> sendImagePromptStream(
    String message,
    Uint8List imageBytes,
  ) async* {
    try {
      final stream = _model.generateContentStream([
        Content.multi([
          TextPart(message),
          InlineDataPart("image/jpeg", imageBytes),
        ]),
      ]);

      await for (final chunk in stream) {
        final text = chunk.text;
        if (text != null) {
          yield text;
        }
      }
    } catch (e) {
      yield "Error: $e";
    }
  }
}
