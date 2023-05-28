import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_architecture/viewmodels/coinlist_viewmodel.dart';
import 'package:provider/provider.dart';
class CoinListScreen extends StatefulWidget {
  const CoinListScreen({Key? key}) : super(key: key);

  @override
  State<CoinListScreen> createState() => _CoinListScreenState();
}

class _CoinListScreenState extends State<CoinListScreen> {
  final _viewModel=CoinListviewmodel();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel.loadData();
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>_viewModel,
      child: Consumer<CoinListviewmodel>(builder: (context, viewModel, child) {
        return getUi(viewModel);
      },),
    );
  }
  Widget getUi(CoinListviewmodel viewModel){
  return Scaffold(
    body: SafeArea(child: ListView.builder(itemCount: viewModel.cryptoList.length??0,itemBuilder: (context, index) {
      return Text(viewModel.cryptoList[index].name??"");
    },)),
  );
  }
}
