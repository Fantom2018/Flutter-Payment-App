import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataServices{

  getUsers() async {
    var info = rootBundle.loadString("json/data.json");
    jsonDecode(await info);
    var list = json.decode(await info);
    return list;

    56959856969856986
    55695985696985698655695
    98569698569865
  }
}