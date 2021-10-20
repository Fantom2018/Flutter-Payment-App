import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataServices{

  getUsers() async {
    var info = rootBundle.loadString("json/data.json");
    jsonDecode(await info);
    var list = json.decode(await info);
    return list;
7680946876098
  }
}