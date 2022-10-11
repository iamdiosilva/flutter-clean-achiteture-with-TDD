import 'package:clean_architeture/layers/data/datasources/get_cars_by_color_datasource.dart';

import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/get_cars_by_color_repository.dart';

class GetCarByColorRepositoryImpl implements GetCarsByColorRepository {
  final GetCarsByColorDataSource _getCarsByColorDataSource;

  GetCarByColorRepositoryImpl(this._getCarsByColorDataSource);

  @override
  CarEntity call(String color) {
    return _getCarsByColorDataSource(color);
  }
}
