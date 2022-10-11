import 'package:clean_architeture/layers/data/impl/datasource/local/get_cars_by_color_local_datasource_impl.dart';
import 'package:clean_architeture/layers/data/repositories/get_cars_by_color_repository_impl.dart';
import 'package:clean_architeture/layers/data/repositories/save_favourite_car_repository_impl.dart';
import 'package:clean_architeture/layers/domain/impl/get_cars_by_color_usecase_impl.dart';
import 'package:clean_architeture/layers/domain/impl/save_favourite_car_usecase_impl.dart';
import 'package:clean_architeture/layers/presenter/controllers/car_controller.dart';
import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  CarPage({Key? key}) : super(key: key);

  final carController = CarController(
    GetCarsByColorUsecaseImpl(
      GetCarByColorRepositoryImpl(
        GetCarsByColorLocalDataSourceImpl(),
      ),
    ),
    SaveFavouriteCarUsecaseImpl(
      SaveFavouriteCarRepositoryImpl(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: Text(carController.car.licencePlate),
      ),
    );
  }
}
