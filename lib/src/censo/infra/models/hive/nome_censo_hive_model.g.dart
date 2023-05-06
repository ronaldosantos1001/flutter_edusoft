// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nome_censo_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NomeCensoHiveModelAdapter extends TypeAdapter<NomeCensoHiveModel> {
  @override
  final int typeId = 0;

  @override
  NomeCensoHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NomeCensoHiveModel(
      nome: fields[0] as String,
      sexo: fields[1] as String,
      frequencia: fields[2] as int,
      regiao: fields[3] as int,
      rank: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, NomeCensoHiveModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.nome)
      ..writeByte(1)
      ..write(obj.sexo)
      ..writeByte(2)
      ..write(obj.frequencia)
      ..writeByte(3)
      ..write(obj.regiao)
      ..writeByte(4)
      ..write(obj.rank);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NomeCensoHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
