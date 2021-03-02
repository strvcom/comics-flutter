// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ComicsAdapter extends TypeAdapter<Comics> {
  @override
  final int typeId = 0;

  @override
  Comics read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Comics(
      id: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String,
      url: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Comics obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ComicsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
