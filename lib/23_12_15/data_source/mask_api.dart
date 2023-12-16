import 'dart:convert';

import 'package:dart_basic/23_12_15/dto/mask_dto.dart';
import 'package:http/http.dart'as http;
class MaskApi{

  Future<MaskDto> getMaskInfoResult() async{
    String url ='http://104.198.248.76:3000/mask' ;
    // 서버요청
  final  response = await http.get(Uri.parse(url));

      // 디코드해서 응답된 데이터 2진수로 과 utf8 디코드 해서 MaskDto모델클래스 안에 넣어준다.
    return MaskDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  }
}
