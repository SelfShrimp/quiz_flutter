import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

import 'answer.dart';

part 'quiz_class.g.dart';

@JsonSerializable(explicitToJson: true)
class Quiz{
  @JsonKey(name: "question")
  String? question;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "answers")
  Answer? answers;
  @JsonKey(name: "correct_answer")
  String? correctAnswers;

  Quiz(this.question, this.description, this.answers, this.correctAnswers);

  factory Quiz.fromJson(Map<String, dynamic> json) =>
      _$QuizFromJson(json);

  Map<String, dynamic> toJson() => _$QuizToJson(this);
}