import 'package:lotura_desktop/data/laundry/data/laundry_data_source.dart';
import 'package:lotura_desktop/domain/laundry/entity/machine_entity.dart';
import 'package:lotura_desktop/domain/laundry/repository/laundry_repository.dart';

class LaundryRepositoryImpl implements LaundryRepository {
  final LaundryDataSource dataSource;

  LaundryRepositoryImpl({required this.dataSource});

  @override
  Future<List<MachineEntity>> getAllLaundryList() =>
      dataSource.getAllLaundryList();

  @override
  Stream<MachineEntity> get laundryList => throw UnimplementedError();

  @override
  void webSocketInit() {}
}
