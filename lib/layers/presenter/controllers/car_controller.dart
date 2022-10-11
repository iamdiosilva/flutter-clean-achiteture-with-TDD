import 'package:clean_architeture/layers/domain/entities/car_entity.dart';
import 'package:clean_architeture/layers/domain/usecases/get_cars_by_color_usecase.dart';
import 'package:clean_architeture/layers/domain/usecases/save_favourite_car_usecase.dart';

class CarController {
  final GetCarsByColorUsecase _getCarsByColorUsecase;
  final SaveFavouriteCarUsecase _saveFavouriteCarUsecase;

  CarController(
    this._getCarsByColorUsecase,
    this._saveFavouriteCarUsecase,
  ) {
    getCarByColor('red');
  }

  late CarEntity car;

  getCarByColor(String color) {
    car = _getCarsByColorUsecase(color);
  }

  saveFavouriteCar(CarEntity car) async {
    final result = await _saveFavouriteCarUsecase(car);
  }
}
