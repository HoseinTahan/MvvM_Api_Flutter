import 'dart:convert';

import 'package:mvvm_architecture/model/crypto.dart';
import 'package:mvvm_architecture/service/api/network_api.dart';
import 'package:http/http.dart' as http;
class WebApi implements NetworkApi {
  @override
  Future<List<Crypto>> getAllCrypto() async {
    var url = Uri.parse('https://api.coincap.io/v2/assets');
    var response=await http.get(url);
    List<Crypto> CryptoList= jsonDecode(response.body)["data"].map<Crypto>((jsonMapObject)=>Crypto.fromMapJson(jsonMapObject)).toList();
    return CryptoList;
  }

}