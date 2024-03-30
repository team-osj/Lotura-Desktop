import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';
import 'package:lotura_desktop/domain/laundry/repository/laundry_repository.dart';

class GetAllLaundryRoomStateUseCase {
  final LaundryRepository _laundryRepository;

  GetAllLaundryRoomStateUseCase({required LaundryRepository laundryRepository})
      : _laundryRepository = laundryRepository;

  Future<List<MachineEntity>> execute() =>
      _laundryRepository.getAllLaundryList();
}
