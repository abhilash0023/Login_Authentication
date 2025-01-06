import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> login(String staffid, String password) async {
  final url = 'https://mcetsss.shop/login/'; // API endpoint URL

  final body = json.encode({
    'staffid': staffid,
    'password': password,
  });

  final response = await http.post(
    Uri.parse(url),
    headers: {
      'Content-Type': 'application/json',
    },
    body: body,
  );

  if (response.statusCode == 200) {
    final responseBody = json.decode(response.body);
    // Assuming a successful login response contains a token or some indication of success
    print('Login successful! Response: $responseBody');
    return true;
  } else {
    print('Login failed with status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return false;
  }
}
