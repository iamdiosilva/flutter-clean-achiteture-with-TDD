import 'package:clean_architeture/layers/domain/entities/car_entity.dart';
import 'package:clean_architeture/layers/domain/repositories/save_favourite_car_repository.dart';
import 'package:clean_architeture/layers/domain/usecases/save_favourite_car_usecase.dart';

class SaveFavouriteCarUsecaseImpl implements SaveFavouriteCarUsecase {
  final SaveFavouriteCarRepository _saveFavouriteCarRepository;

  SaveFavouriteCarUsecaseImpl(this._saveFavouriteCarRepository);

  @override
  Future<bool> call(CarEntity carEntity) async {
    final result = await _saveFavouriteCarRepository(carEntity);
    return result;
  }
}
