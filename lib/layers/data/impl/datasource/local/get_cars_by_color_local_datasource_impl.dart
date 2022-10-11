import 'package:clean_architeture/layers/data/dtos/car_dto.dart';

import '../../../datasources/get_cars_by_color_datasource.dart';

class GetCarsByColorLocalDataSourceImpl implements GetCarsByColorDataSource {
  final jsonRed = {
    'licencePlate': 'RED-1234',
    'doors': 4,
    'value': 10000,
  };
  final jsonAny = {
    'licencePlate': 'ABC-1234',
    'doors': 2,
    'value': 15000,
  };
  @override
  CarDTO call(String color) {
    if (color == 'red') {
      return CarDTO.fromMap(jsonRed);
    } else {
      return CarDTO.fromMap(jsonAny);
    }
  }
}
