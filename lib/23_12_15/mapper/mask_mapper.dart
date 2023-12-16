import 'package:dart_basic/23_12_15/model/store.dart';

import '../dto/mask_dto.dart';


extension StoresToStore on Stores {
  Store toStore() {
    return Store(
      name: name ?? '',
      address: addr ?? '주소가 없 습니다',
      stock: remainStat ?? 'null',
      type: type != null ? int.parse(type!) : 0,
    );
  }
}