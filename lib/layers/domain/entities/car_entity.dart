class CarEntity {
  String licencePlate;
  int doors;
  double value;

  CarEntity({
    required this.licencePlate,
    required this.doors,
    required this.value,
  });

  double get realValue => value * doors;

  setLogic() {
    if (value > 10000) {
      return value *= 2;
    }
  }
}
