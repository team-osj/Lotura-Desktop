import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';
import 'package:lotura_desktop/domain/laundry/use_case/get_all_laundry_room_state_use_case.dart';
import 'package:lotura_desktop/domain/laundry/use_case/get_laundry_room_state_use_case.dart';
import 'package:lotura_desktop/presentation/laundry_room/bloc/laundry_room_event.dart';
import 'package:lotura_desktop/presentation/laundry_room/bloc/laundry_room_state.dart';

class LaundryRoomBloc
    extends Bloc<LaundryRoomEvent, LaundryRoomState<List<MachineEntity>>> {
  final GetLaundryRoomStateUseCase _getLaundryStatusUseCase;
  final GetAllLaundryRoomStateUseCase _getAllLaundryListEventUseCase;

  LaundryRoomBloc(
      {required GetLaundryRoomStateUseCase getLaundryRoomStateUseCase,
      required GetAllLaundryRoomStateUseCase getAllLaundryRoomStateUseCase})
      : _getLaundryStatusUseCase = getLaundryRoomStateUseCase,
        _getAllLaundryListEventUseCase = getAllLaundryRoomStateUseCase,
        super(Empty()) {
    on<GetLaundryRoomStateEvent>(_getLaundryEventHandler);
    on<GetAllLaundryRoomStateEvent>(_getAllLaundryListEventHandler);
  }

  void _getLaundryEventHandler(GetLaundryRoomStateEvent event,
      Emitter<LaundryRoomState<List<MachineEntity>>> emit) async {
    try {
      _getLaundryStatusUseCase.execute();
      await for (var data in _getLaundryStatusUseCase.laundryList) {
        final newState = Loaded(
            data: state.value
                .map((e) => e.machineId == data.machineId
                    ? e.copyWith(
                        machineId: data.machineId,
                        machineState: data.machineState,
                        deviceType: data.deviceType)
                    : e)
                .toList());
        emit(newState);
      }
    } catch (e) {
      emit(Error(errorObj: e));
    }
  }

  void _getAllLaundryListEventHandler(GetAllLaundryRoomStateEvent event,
      Emitter<LaundryRoomState<List<MachineEntity>>> emit) async {
    try {
      emit(Loading());
      final newState =
          Loaded(data: await _getAllLaundryListEventUseCase.execute());
      emit(newState);
    } catch (e) {
      emit(Error(errorObj: e));
    }
  }
}
