// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'makepack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      cardNo: json['cardNo'] as int,
      question: json['question'] as String,
      score: json['score'] as int,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'cardNo': instance.cardNo,
      'question': instance.question,
      'score': instance.score,
      'answers': instance.answers,
    };

Answer _$AnswerFromJson(Map<String, dynamic> json) => Answer(
      text: json['text'] as String,
      correct: json['correct'] as bool,
    );

Map<String, dynamic> _$AnswerToJson(Answer instance) => <String, dynamic>{
      'text': instance.text,
      'correct': instance.correct,
    };
