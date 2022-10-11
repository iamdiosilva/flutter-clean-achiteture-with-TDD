import 'package:clean_architeture/layers/data/repositories/save_favourite_car_repository_impl.dart';
import 'package:clean_architeture/layers/domain/entities/car_entity.dart';
import 'package:clean_architeture/layers/domain/impl/save_favourite_car_usecase_impl.dart';
import 'package:clean_architeture/layers/domain/usecases/save_favourite_car_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Expect who saves the car with success', () async {
    final saveFavouriteCarRepository = SaveFavouriteCarRepositoryImpl();
    SaveFavouriteCarUsecase useCase =
        SaveFavouriteCarUsecaseImpl(saveFavouriteCarRepository);
    final carEntity =
        CarEntity(licencePlate: 'ABC-1234', value: 1000, doors: 2);
    final result = await useCase(carEntity);

    expect(result, true);
  });
  test('Expect who no saves the car when the value is minor or equals 0',
      () async {
    final saveFavouriteCarRepository = SaveFavouriteCarRepositoryImpl();
    SaveFavouriteCarUsecase useCase =
        SaveFavouriteCarUsecaseImpl(saveFavouriteCarRepository);
    final carEntity = CarEntity(licencePlate: 'ABC-1234', value: 0, doors: 2);
    final result = await useCase(carEntity);

    expect(result, false);
  });
}
