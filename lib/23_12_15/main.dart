import 'package:dart_basic/23_12_15/data_source/mask_api.dart';
import 'package:dart_basic/23_12_15/mapper/mask_mapper.dart';
import 'package:dart_basic/23_12_15/model/pharmacy.dart';

void main() async{
  final api =MaskApi();
  final dto = await api.getMaskInfoResult();

  List<Pharmacy> pharmacys = dto.pharmacys
      ?.where((e) => e.remainStat != null)    // 거를 거 거르고
      .map((e) => e.toPharmacy())    // 모델 클래스로 변환
      .toList() ?? [];

    print('-------------------------------------------------');

    print(pharmacys.toString());

}