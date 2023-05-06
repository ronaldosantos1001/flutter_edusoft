import 'package:flutter/material.dart';
import 'package:flutter_edusoft/common/enums/sexo_enum.dart';
import 'package:flutter_edusoft/src/core/entities/entity.dart';


@immutable
class NomeCensoEntity extends IEntity {
  final String nome;
  final String sexoString;
  final int frequencia;
  final int regiao;
  final int rank;

  const NomeCensoEntity({
    required this.nome,
    required this.sexoString,
    required this.frequencia,
    required this.regiao,
    required this.rank,
  });

  SexoEnum get sexo => SexoEnumExtension.fromString(sexoString);

  @override
  List<Object?> get props => [nome];

  @override
  String toString() => "NomeCensoEntity(nome: $nome, sexo: $sexo, frequencia: $frequencia, regiao: $regiao, rank: $rank)";
}
