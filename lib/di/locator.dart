import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:lotura_desktop/data/laundry/data/laundry_data_source.dart';
import 'package:lotura_desktop/data/laundry/repository/laundry_repository.dart';
import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';
import 'package:lotura_desktop/domain/laundry/repository/laundry_repository.dart';
import 'package:lotura_desktop/domain/laundry/use_case/get_all_laundry_room_state_use_case.dart';
import 'package:lotura_desktop/domain/laundry/use_case/get_laundry_room_state_use_case.dart';
import 'package:lotura_desktop/presentation/laundry_room/bloc/laundry_room_bloc.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  //stream_controller
  locator.registerSingleton<StreamController<MachineEntity>>(
      StreamController<MachineEntity>());

  //data_source
  locator.registerSingleton<LaundryDataSource>(LaundryDataSource(
      streamController: locator<StreamController<MachineEntity>>()));

  //repository
  locator.registerSingleton<LaundryRepository>(
      LaundryRepositoryImpl(dataSource: locator<LaundryDataSource>()));

  //use_case
  locator.registerSingleton<GetAllLaundryRoomStateUseCase>(
      GetAllLaundryRoomStateUseCase(
          laundryRepository: locator<LaundryRepository>()));

  locator.registerSingleton<GetLaundryRoomStateUseCase>(
      GetLaundryRoomStateUseCase(
          laundryRepository: locator<LaundryRepository>()));

  //bloc
  locator.registerSingleton(LaundryRoomBloc(
    getLaundryRoomStateUseCase: locator<GetLaundryRoomStateUseCase>(),
    getAllLaundryRoomStateUseCase: locator<GetAllLaundryRoomStateUseCase>(),
  ));
}
