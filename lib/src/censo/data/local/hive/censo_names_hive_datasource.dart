import 'package:flutter_edusoft/src/censo/domain/entities/nome_censo_entity.dart';
import 'package:flutter_edusoft/src/censo/infra/datasources/censo_names_datasource.dart';
import 'package:flutter_edusoft/src/censo/infra/models/nome_censo_model.dart';
import 'package:flutter_edusoft/src/core/resources/data_state.dart';
import 'package:flutter_edusoft/src/core/resources/data_state_impl.dart';
import 'package:hive_flutter/hive_flutter.dart';


import '../../../infra/models/hive/nome_censo_hive_model.dart';

class CensoNamesHiveDatasource implements ICensoNamesDatasource {
  final Box<NomeCensoHiveModel> _box;

  const CensoNamesHiveDatasource({required Box<NomeCensoHiveModel> box})
      : _box = box;

  @override
  Future<IDataState<List<NomeCensoEntity>>> fetch() async => DataState.fromData(
        data: _box.values.toList().map((e) => e.toModel()).toList(),
      );

  Future<void> insert(List<NomeCensoModel> data) async =>
      // ignore: avoid_function_literals_in_foreach_calls
      data.forEach((e) async => await _box.put(e.rank, NomeCensoHiveModel.fromModel(e)));

  @override
  Future<IDataState<List<NomeCensoEntity>>> fetchPaginated(int page) =>
      throw UnimplementedError();
}
