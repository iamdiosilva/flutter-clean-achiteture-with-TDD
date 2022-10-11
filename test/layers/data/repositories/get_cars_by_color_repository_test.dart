import 'package:clean_architeture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:clean_architeture/layers/data/impl/datasource/local/get_cars_by_color_local_datasource_impl.dart';
import 'package:clean_architeture/layers/data/repositories/get_cars_by_color_repository_impl.dart';
import 'package:clean_architeture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarsByColorDataSource dataSource = GetCarsByColorLocalDataSourceImpl();
  GetCarsByColorRepository repository = GetCarByColorRepositoryImpl(dataSource);

  test('Should return a instance of a car with any cor', () {
    final result = repository('blue');
    expect(result, isNotNull);
  });
}
