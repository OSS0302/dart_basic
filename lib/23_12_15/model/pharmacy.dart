import 'package:json_annotation/json_annotation.dart';

part 'pharmacy.g.dart';

@JsonSerializable(explicitToJson: true)
class Pharmacy {
  String name;
  String address;
  String stocks;
  int type;

  Pharmacy({
    required this.name,
    required this.address,
    required this.stocks,
    required this.type,
  });


  factory Pharmacy.fromJson(Map<String, dynamic> json) =>
      _$PharmacyFromJson(json);

  Map<String, dynamic> toJson() => _$PharmacyToJson(this);


}
