import 'package:clean_architeture/layers/domain/entities/car_entity.dart';

import '../../domain/repositories/save_favourite_car_repository.dart';

class SaveFavouriteCarRepositoryImpl implements SaveFavouriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.value > 0;
  }
}
