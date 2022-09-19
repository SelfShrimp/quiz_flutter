// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quiz _$QuizFromJson(Map<String, dynamic> json) => Quiz(
      json['question'] as String?,
      json['description'] as String?,
      json['answers'] == null
          ? null
          : Answer.fromJson(json['answers'] as Map<String, dynamic>),
      json['correct_answer'] as String?,
    );

Map<String, dynamic> _$QuizToJson(Quiz instance) => <String, dynamic>{
      'question': instance.question,
      'description': instance.description,
      'answers': instance.answers?.toJson(),
      'correct_answers': instance.correctAnswers,
    };
