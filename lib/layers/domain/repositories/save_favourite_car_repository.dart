import '../entities/car_entity.dart';

abstract class SaveFavouriteCarRepository {
  Future<bool> call(CarEntity carEntity);
}
