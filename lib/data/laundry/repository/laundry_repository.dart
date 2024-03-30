import 'package:lotura_desktop/data/laundry/data/laundry_data_source.dart';
import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';
import 'package:lotura_desktop/domain/laundry/repository/laundry_repository.dart';

class LaundryRepositoryImpl implements LaundryRepository {
  final LaundryDataSource _dataSource;

  LaundryRepositoryImpl({required LaundryDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<List<MachineEntity>> getAllLaundryList() =>
      _dataSource.getAllLaundryList();

  @override
  Stream<MachineEntity> get laundryList => _dataSource.laundryList;

  @override
  void webSocketInit() => _dataSource.webSocketInit();
}
