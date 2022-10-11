import 'package:clean_architeture/layers/domain/entities/car_entity.dart';

class CarDTO extends CarEntity {
  CarDTO({
    required super.licencePlate,
    required super.doors,
    required super.value,
  });

  toMap() {
    return {
      'licencePlate': licencePlate,
      'doors': doors,
      'value': value,
    };
  }

  factory CarDTO.fromMap(Map<String, dynamic> map) {
    return CarDTO(
      licencePlate: map['licencePlate'],
      doors: map['doors'],
      value: map['value'].toDouble(),
    );
  }
}
