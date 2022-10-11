import 'package:clean_architeture/layers/data/impl/datasource/local/get_cars_by_color_local_datasource_impl.dart';
import 'package:clean_architeture/layers/data/repositories/get_cars_by_color_repository_impl.dart';
import 'package:clean_architeture/layers/domain/entities/car_entity.dart';
import 'package:clean_architeture/layers/domain/impl/get_cars_by_color_usecase_impl.dart';
import 'package:clean_architeture/layers/domain/usecases/get_cars_by_color_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Should return a instance of a car when pass any color", () {
    GetCarsByColorUsecase useCase = GetCarsByColorUsecaseImpl(
        GetCarByColorRepositoryImpl(GetCarsByColorLocalDataSourceImpl()));
    final result = useCase('azul');
    expect(result, isInstanceOf<CarEntity>());
  });

  test("Should return a instance of a car with 4 doors when red", () {
    GetCarsByColorUsecase useCase = GetCarsByColorUsecaseImpl(
        GetCarByColorRepositoryImpl(GetCarsByColorLocalDataSourceImpl()));
    final result = useCase('red');
    expect(result.doors, 4);
  });
  test(
      "Should return a instance of a car with 2 doors when any color except red",
      () {
    GetCarsByColorUsecase useCase = GetCarsByColorUsecaseImpl(
        GetCarByColorRepositoryImpl(GetCarsByColorLocalDataSourceImpl()));
    final result = useCase('blue');
    expect(result.doors, 2);
  });
}
