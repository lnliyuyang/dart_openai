import 'sub_models/delta.dart';
export "sub_models/delta.dart";

/// {@template openai_stream_chat_completion_choice}
/// The [OpenAIStreamChatCompletionChoiceModel] class represents the chat completion choice response model of the OpenAI API, which is used and get returned while using the chat methods that leverages [Stream] functionality.
/// {@endtemplate}
final class OpenAIStreamChatCompletionChoiceModel {

  /// The [delta] of the choice.
  final OpenAIStreamChatCompletionChoiceDeltaModel delta;

  /// The [finishReason] of the choice.
  final String? finishReason;

  /// Weither the choice have a finish reason or not.
  bool get hasFinishReason => finishReason != null;

  @override
  int get hashCode {
    return delta.hashCode ^ finishReason.hashCode;
  }

  /// {@macro openai_stream_chat_completion_choice}
  const OpenAIStreamChatCompletionChoiceModel({
    required this.delta,
    required this.finishReason,
  });

  /// {@macro openai_stream_chat_completion_choice}
  factory OpenAIStreamChatCompletionChoiceModel.fromMap(
    Map<String, dynamic> json,
  ) {
    return OpenAIStreamChatCompletionChoiceModel(
      delta: OpenAIStreamChatCompletionChoiceDeltaModel.fromMap(json['delta']),
      finishReason: json['finish_reason'],
    );
  }

  @override
  String toString() {
    return 'OpenAIStreamChatCompletionChoiceModel(delta: $delta, finishReason: $finishReason)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OpenAIStreamChatCompletionChoiceModel &&
        other.delta == delta &&
        other.finishReason == finishReason;
  }
}
