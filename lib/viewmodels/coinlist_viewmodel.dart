import 'package:flutter/cupertino.dart';
import 'package:mvvm_architecture/model/crypto.dart';
import 'package:mvvm_architecture/service/api/webapi_fake.dart';
import 'package:mvvm_architecture/service/api/webapi_implementation.dart';

class CoinListviewmodel extends ChangeNotifier{
// if real api call WebApi else call WebApiFake
final _webApi=WebApi();
List<Crypto> cryptoList=[];

void loadData() async{

  cryptoList=await _webApi.getAllCrypto();
  notifyListeners();
}
}