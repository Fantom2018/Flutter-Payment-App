import 'package:flutter_payment_app/sevices/data_sevices.dart';
import 'package:get/get.dart';

class DataController extends GetxController{
  var list = [].obs;
  final service = new DataServices();

  @override
  void onInit(){
    _loadData();
    super.onInit();
  }
  _loadData(){

  }
}