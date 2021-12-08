// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'makepack.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HivePackAdapter extends TypeAdapter<HivePack> {
  @override
  final int typeId = 0;

  @override
  HivePack read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePack(
      title: fields[0] as String,
      questions: (fields[1] as List).cast<HiveQuestion>(),
    );
  }

  @override
  void write(BinaryWriter writer, HivePack obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.questions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HivePackAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveQuestionAdapter extends TypeAdapter<HiveQuestion> {
  @override
  final int typeId = 1;

  @override
  HiveQuestion read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveQuestion(
      cardNo: fields[0] as int,
      question: fields[1] as String,
      answers: (fields[2] as List?)?.cast<HiveAnswer>(),
    );
  }

  @override
  void write(BinaryWriter writer, HiveQuestion obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.cardNo)
      ..writeByte(1)
      ..write(obj.question)
      ..writeByte(2)
      ..write(obj.answers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveQuestionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveAnswerAdapter extends TypeAdapter<HiveAnswer> {
  @override
  final int typeId = 2;

  @override
  HiveAnswer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveAnswer(
      text: fields[0] as String,
      correct: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, HiveAnswer obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.correct);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveAnswerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
