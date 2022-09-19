import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'quiz_class.g.dart';

@JsonSerializable(explicitToJson: true)
class Quiz{
  @JsonKey(name: "question")
  String? question;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "answers")
  List<String>? answers;
  @JsonKey(name: "correct_answers")
  List<bool>? correctAnswers;

  Quiz(this.question, this.description, this.answers, this.correctAnswers);

  factory Quiz.fromJson(Map<String, dynamic> json) =>
      _$QuizFromJson(json);

  Map<String, dynamic> toJson() => _$QuizToJson(this);
}