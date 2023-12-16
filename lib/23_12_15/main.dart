

import 'package:dart_basic/23_12_15/data_source/mask_api.dart';
import 'package:dart_basic/23_12_15/mapper/mask_mapper.dart';

import 'model/store.dart';

void main() async {
  final api = MaskApi();

  final dto = await api.getMaskInfoResult();

  List<Store> stores = dto.stores
      ?.where((e) => e.remainStat != null)
      .map((e) => e.toStore())
      .toList() ?? [];

  print('----------------------------------------------------');

  print(stores.toString());
}