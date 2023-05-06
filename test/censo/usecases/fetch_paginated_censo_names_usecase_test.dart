
import 'package:flutter_edusoft/modules/IoC/dependency_containers.dart' as kiwi;
import 'package:flutter_edusoft/src/censo/domain/usecases/fetch_paginated_censo_names_usecase.dart';
import 'package:flutter_edusoft/src/censo/infra/models/nome_censo_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async{
  await kiwi.setUp();

  test('basic test on fetch_paginated_censo_names_usecase execution', () async {
      final usecase = kiwi.container.resolve<FetchPaginatedCensoNamesUsecase>();
      final data = await usecase(0);
      
      expect(data is List<NomeCensoModel>, true);
      expect(data.isNotEmpty, true);
  });
}