import 'package:get_it/get_it.dart';
import 'package:lotura_desktop/data/laundry/data/laundry_data_source.dart';
import 'package:lotura_desktop/data/laundry/repository/laundry_repository.dart';
import 'package:lotura_desktop/domain/laundry/repository/laundry_repository.dart';
import 'package:lotura_desktop/domain/laundry/use_case/get_all_laundry_room_state_use_case.dart';
import 'package:lotura_desktop/domain/laundry/use_case/get_laundry_room_state_use_case.dart';
import 'package:lotura_desktop/presentation/laundry_room/bloc/laundry_room_bloc.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  //data_source
  locator.registerSingleton<LaundryDataSource>(LaundryDataSource());

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
