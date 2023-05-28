import 'package:mvvm_architecture/model/crypto.dart';

abstract class NetworkApi{

 Future<List<Crypto>> getAllCrypto();

}