// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginEntity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginEntityAdapter extends TypeAdapter<LoginEntity> {
  @override
  final int typeId = 0;

  @override
  LoginEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginEntity(
      personalDetail: fields[0] as Data?,
    );
  }

  @override
  void write(BinaryWriter writer, LoginEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.personalDetail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
