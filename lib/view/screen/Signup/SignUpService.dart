import 'package:flutter_application_2/config/service.dart';
import 'package:http/http.dart' as http;

class SignUpService {
  var url = Uri.parse(Service.baseUrl + Service.signUpUrl);

  signup(String name, String email, String password, String c_password) async {
    final response = await http.post(
      url,
      body: {
        'name': name,
        'email': email,
        'password': password,
        'c_password': c_password,
        'type': 'admin'
      },
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer your_api_token',
      },
    );

    if (response.statusCode == 200) {
      print('Response data:${response.statusCode} ${response.body}');
    } else if (response.statusCode == 401) {
      print('Response data:${response.statusCode} ${response.body}');
    } else {
      print("Faild to connect:${response.statusCode}");
    }
  }
}
