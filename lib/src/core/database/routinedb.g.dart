// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routinedb.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoutineDbAdapter extends TypeAdapter<RoutineDb> {
  @override
  final int typeId = 0;

  @override
  RoutineDb read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoutineDb(
      title: fields[0] as String,
      description: fields[1] as String,
      missed: fields[2] as bool,
      done: fields[3] as bool,
      routimeDate: fields[5] as DateTime,
      routineTime: fields[4] as TimeOfDay,
    );
  }

  @override
  void write(BinaryWriter writer, RoutineDb obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.missed)
      ..writeByte(3)
      ..write(obj.done)
      ..writeByte(4)
      ..write(obj.routineTime)
      ..writeByte(5)
      ..write(obj.routimeDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoutineDbAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
