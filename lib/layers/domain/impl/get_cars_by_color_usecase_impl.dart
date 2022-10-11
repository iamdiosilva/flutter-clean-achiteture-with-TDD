import 'package:clean_architeture/layers/domain/entities/car_entity.dart';

import '../repositories/get_cars_by_color_repository.dart';
import '../usecases/get_cars_by_color_usecase.dart';

class GetCarsByColorUsecaseImpl implements GetCarsByColorUsecase {
  final GetCarsByColorRepository _getCarsByColorRepository;

  GetCarsByColorUsecaseImpl(this._getCarsByColorRepository);

  @override
  CarEntity call(String color) {
    return _getCarsByColorRepository(color);
  }
}
