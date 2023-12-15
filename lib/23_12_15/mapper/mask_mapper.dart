import 'package:dart_basic/23_12_15/model/pharmacy.dart';

import '../dto/mask_dto.dart';


extension PharmacyToPharmacy on Pharmacys {
  Pharmacy toPharmacy() {
    return Pharmacy(
      name: name ?? '',
      address: addr ?? '주소 없음',
      stocks: remainStat ?? 'null',
      type: type != null ? int.parse(type!) : 0,
    );
  }
}