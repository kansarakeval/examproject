import 'dart:convert';
import 'package:examproject/screen/Home/model/home_model.dart';
import 'package:http/http.dart' as http;

class APIHelper {

  //news
  Future<HomeModel?> newsApiCall() async {
    String apiLink = "https://newsapi.org/v2/top-headlines/sources?apiKey=462c7412b507426585d7957aa32af462";

    var response = await http.get(Uri.parse(apiLink));
    if (response.statusCode == 200) {
      var json =jsonDecode(response.body);
      HomeModel homeModel= HomeModel.mapToModel(json);
      return homeModel;
    }
    return null;
  }
}