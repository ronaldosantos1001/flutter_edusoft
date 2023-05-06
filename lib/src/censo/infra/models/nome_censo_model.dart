import 'package:flutter_edusoft/src/censo/domain/entities/nome_censo_entity.dart';
import 'package:flutter_edusoft/common/enums/sexo_enum.dart';

class NomeCensoModel extends NomeCensoEntity {
  final String _sexo;

  const NomeCensoModel({
    required String nome,
    required String sexoString,
    required int frequencia,
    required int regiao,
    required int rank,
  })  : _sexo = sexoString,
        super(
          nome: nome,
          sexoString: sexoString,
          frequencia: frequencia,
          regiao: regiao,
          rank: rank,
        );

  SexoEnum get sexoEnum => SexoEnumExtension.fromString(_sexo);

  factory NomeCensoModel.fromMap(Map<String, dynamic> map) {
    return NomeCensoModel(
      nome: map['nome'],
      sexoString: map['sexo'],
      frequencia: map['freq'],
      regiao: map['regiao'],
      rank: map['rank'],
    );
  }

  Map<String, dynamic> toMap() => {
        'nome': nome,
        'sexo': _sexo,
        'freq': frequencia,
        'regiao': regiao,
        'rank': rank,
      };

  @override
  String toString() =>
      "NomeCensoModel(nome: $nome, sexo: $_sexo, frequencia: $frequencia, regiao: $regiao, rank: $rank)";
}
