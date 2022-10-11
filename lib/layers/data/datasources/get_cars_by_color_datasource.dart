import 'package:clean_architeture/layers/data/dtos/car_dto.dart';

abstract class GetCarsByColorDataSource {
  CarDTO call(String color);
}
