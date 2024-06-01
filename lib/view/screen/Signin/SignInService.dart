import 'package:flutter_application_2/config/service.dart';
import 'package:http/http.dart' as http;

class SignINService {
  var url = Uri.parse(Service.baseUrl + Service.signInUrl);
  signIN(String email, String password) async {
    final response = await http.post(url,
        body: {'email': email, 'password': password},
        headers: {'Accept': 'application/json'});

    print(response.body);
  }
}
