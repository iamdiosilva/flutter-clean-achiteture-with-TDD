import 'package:clean_architeture/layers/domain/entities/car_entity.dart';

abstract class SaveFavouriteCarUsecase {
  Future<bool> call(CarEntity carEntity);
}
