import 'sub_models/message.dart';

/// {@template openai_chat_completion_choice}
/// This class represents a choice of the [OpenAIChatCompletionModel] model of the OpenAI API, which is used and get returned while using the [OpenAIChat] methods.
/// {@endtemplate}
final class OpenAIChatCompletionChoiceModel {

  /// The [message] of the choice.
  final OpenAIChatCompletionChoiceMessageModel message;

  /// The [finishReason] of the choice.
  final String? finishReason;

  /// Weither the choice have a finish reason.
  bool get haveFinishReason => finishReason != null;

  @override
  int get hashCode {
    return message.hashCode ^ finishReason.hashCode;
  }

  /// {@macro openai_chat_completion_choice}
  const OpenAIChatCompletionChoiceModel({
    required this.message,
    required this.finishReason,
  });

  /// This is used  to convert a [Map<String, dynamic>] object to a [OpenAIChatCompletionChoiceModel] object.
  factory OpenAIChatCompletionChoiceModel.fromMap(Map<String, dynamic> json) {
    return OpenAIChatCompletionChoiceModel(
      message: OpenAIChatCompletionChoiceMessageModel.fromMap(json['message']),
      finishReason: json['finish_reason'],
    );
  }

  /// This method used to convert the [OpenAIChatCompletionChoiceModel] to a [Map<String, dynamic>] object.
  Map<String, dynamic> toMap() {
    return {
      "message": message.toMap(),
      "finish_reason": finishReason,
    };
  }

  @override
  String toString() {
    return 'OpenAIChatCompletionChoiceModel(message: $message, finishReason: $finishReason)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OpenAIChatCompletionChoiceModel &&
        other.message == message &&
        other.finishReason == finishReason;
  }
}
