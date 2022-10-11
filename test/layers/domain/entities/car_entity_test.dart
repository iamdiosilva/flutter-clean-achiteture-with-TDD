import 'package:clean_architeture/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Should be a not null entity", () {
    CarEntity carEntity = CarEntity(
      licencePlate: 'ABC-1234',
      doors: 4,
      value: 10000,
    );
    expect(carEntity, isNotNull);
  });

  test("Should have 2 doors", () {
    CarEntity carEntity = CarEntity(
      licencePlate: 'ABC-1234',
      doors: 2,
      value: 10000,
    );
    expect(carEntity.doors, 2);
  });

  test("Expected real value 20000", () {
    CarEntity carEntity = CarEntity(
      licencePlate: 'ABC-1234',
      doors: 2,
      value: 10000,
    );
    double expectedValue = 20000;
    expect(carEntity.realValue, expectedValue);
  });

  test("Expected real value 0", () {
    CarEntity carEntity = CarEntity(
      licencePlate: 'ABC-1234',
      doors: 0,
      value: 10000,
    );
    double expectedValue = 0;
    expect(carEntity.realValue, expectedValue);
  });

  test("Expected real value 22000", () {
    CarEntity carEntity = CarEntity(
      licencePlate: 'ABC-1234',
      doors: 2,
      value: 11000,
    );
    double expectedValue = 22000;
    expect(carEntity.setLogic(), expectedValue);
  });
}
