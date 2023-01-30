import 'dart:convert';
import 'package:apistudy/model/user_model.dart';
import 'package:http/http.dart' as http;

class APIs {
  String baseUrl = 'https://jsonplaceholder.typicode.com/posts';
  static List<UserDataModel> userList = [];

  Future<List<UserDataModel>> getUserMethod() async {
    final response = await http.get(Uri.parse(baseUrl));
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      for (Map i in data) {
        userList.add(UserDataModel.fromJson(i));
      }
      return userList;
    }
    return userList;
  }
}




