// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quiz _$QuizFromJson(Map<String, dynamic> json) => Quiz(
      json['question'] as String?,
      json['description'] as String?,
      (json['answers'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['correct_answers'] as List<dynamic>?)
          ?.map((e) => e as bool)
          .toList(),
    );

Map<String, dynamic> _$QuizToJson(Quiz instance) => <String, dynamic>{
      'question': instance.question,
      'description': instance.description,
      'answers': instance.answers,
      'correct_answers': instance.correctAnswers,
    };
