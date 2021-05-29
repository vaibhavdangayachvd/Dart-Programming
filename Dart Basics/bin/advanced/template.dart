import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class Vaibhav<A, B, C, D> {
  A a;
  B b;
  C c;
  D d;
}

void main() async {
  final url =
      'https://onlyfans.com/api2/v2/users/me?app-token=33d57ade8c02dbc5a333db99ff9ae26a';
  final res = await http.put(url,
      body: jsonEncode({
        "about": "",
        "avatar": null,
        "header": null,
        "isVisibleOnline": true,
        "location": "",
        "name": "Vaibhav ",
        "paidFeed": true,
        "shouldReceiveLessNotifications": false,
        "username": "vaibhavdangayachvd",
        "website": "",
        "wishlist": "",
        "recommenderReward": null,
      }),
      headers: {
        'cookie':
            'ref_src=; fp=bf0f75cf6a8618c60af7b7af5162503e; sess=2isocpt2lcknlkhlko3ud8v3ug; auth_id=44182391; auth_hash=13b82432f7875da298105abe911936ea; sc_is_visitor_unique=rx12105524.1594909320.6C4FDFC977B94FD86FD9D0DDB56DD8B6.1.1.1.1.1.1.1.1.1',
        HttpHeaders.userAgentHeader:
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64',
        'user-id': '44182391',
        'access-token': '2isocpt2lcknlkhlko3ud8v3ug',
        'accept': 'application/json, text/plain, */*',
        'content-type': 'application/json',
      });
  print(res.body);
}
