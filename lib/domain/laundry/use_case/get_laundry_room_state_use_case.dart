import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';
import 'package:lotura_desktop/domain/laundry/repository/laundry_repository.dart';

class GetLaundryRoomStateUseCase {
  final LaundryRepository _laundryRepository;

  GetLaundryRoomStateUseCase({required LaundryRepository laundryRepository})
      : _laundryRepository = laundryRepository;

  Stream<MachineEntity> get laundryList => _laundryRepository.laundryList;

  void execute() {
    _laundryRepository.webSocketInit();
  }
}
