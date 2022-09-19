import 'package:json_annotation/json_annotation.dart';

part 'answer.g.dart';

@JsonSerializable(explicitToJson: true)
class Answer{
  String? answer_a;
  String? answer_b;
  String? answer_c;
  String? answer_d;
  String? answer_e;
  String? answer_f;

  Answer(this.answer_a,this.answer_b,this.answer_c,this.answer_d,this.answer_e,this.answer_f);

  factory Answer.fromJson(Map<String, dynamic> json) =>
      _$AnswerFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerToJson(this);
}