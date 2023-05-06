import 'package:flutter_edusoft/src/censo/domain/entities/nome_censo_entity.dart';
import 'package:flutter_edusoft/src/censo/infra/datasources/censo_names_datasource.dart';
import 'package:flutter_edusoft/src/censo/infra/models/nome_censo_model.dart';
import 'package:flutter_edusoft/src/core/errors/network_error.dart';
import 'package:flutter_edusoft/src/core/resources/data_state.dart';
import 'package:flutter_edusoft/src/core/resources/data_state_impl.dart';
import 'package:dio/dio.dart';

import '../constants/constants.dart';

class CensoNamesApiDatasource extends ICensoNamesDatasource {
  final Dio _dio;

  CensoNamesApiDatasource(this._dio);

  @override
  Future<IDataState<List<NomeCensoEntity>>> fetch() async {
    try {
      final response = await _dio.get(apiCensoBaseURI);
      final data = (response.data as List<dynamic>)
          .map((map) => NomeCensoModel.fromMap(map))
          .toList();
      return DataState.fromData(data: data);
    } catch (error, stackTrace) {
      throw NetworkError(
          message: "Ocorreu um erro inesperado ao tentar carregar os dados",
          stack: stackTrace,
          error: error);
    }
  }

  @override
  Future<IDataState<List<NomeCensoEntity>>> fetchPaginated(int page) async {
    try {
      final response = await _dio.get(apiCensoBaseURI);
      final data = (response.data as List<dynamic>)
          .map((map) => NomeCensoModel.fromMap(map))
          .toList();
      return DataState.fromData(data: data);
    } catch (error, stackTrace) {
      throw NetworkError(
          message: "Ocorreu um erro inesperado ao tentar carregar os dados",
          stack: stackTrace,
          error: error);
    }
  }
}