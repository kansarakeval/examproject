import 'package:examproject/screen/Home/model/home_model.dart';
import 'package:examproject/util/api_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier{
  HomeModel? homeModel;

  Future<void> gethomeData() async {
    APIHelper apiHelper= APIHelper();
    HomeModel? heme1 =await apiHelper.newsApiCall();
    homeModel=heme1;
    notifyListeners();
  }
}