
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'image_model.dart';

class UserApiServices  {
  Future<List<UsersModel>> getImages() async {
    var imageUrl = Uri.parse("https://api.unsplash.com/photos?page=1");
    var headers = {
      "Authorization": 'Client-ID aODFTYpeEi6J9FrtE59hQ6iDaepHKSIXOBK3iyKlnbk'
    };
    var response = await http.get(imageUrl,headers: headers);
    if (response.statusCode == 200) {
      print("success");
      var data = jsonDecode(response.body) as List;
      var getResponse = data.map((json) => UsersModel.fromJson(json)).toList();
      return getResponse;
    }
    else {
      return [];
    }
    }

}
