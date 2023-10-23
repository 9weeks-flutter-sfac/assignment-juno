import 'dart:convert';

import 'package:assignment1/model/border.dart';
import 'package:assignment1/model/course.dart';
import 'package:assignment1/model/fact.dart';
import 'package:assignment1/model/meow.dart';
import 'package:assignment1/model/slip.dart';
import 'package:dio/dio.dart';

class Futures {
  static Future<Course> getCourse() async {
    var _dio = Dio();
    var res = await _dio.get('https://sniperfactory.com/sfac/http_json_data');
    print(res.data);
    var result = Course.fromMap(res.data['item']);
    return result;
  }

  static Future<Fact> getFact() async {
    var _dio = Dio();
    var res = await _dio.get('https://catfact.ninja/fact');
    var result = Fact.fromMap(res.data);

    return result;
  }

  static Future<Meow> getMeow() async {
    var _dio = Dio();
    var res = await _dio.get('https://meowfacts.herokuapp.com/');

    var result = Meow.fromMap(res.data);
    print(result);

    return result;
  }

  static Future<Slip> getSlip() async {
    var _dio = Dio();
    var res = await _dio.get('https://api.adviceslip.com/advice');

    var jsonData = jsonDecode(res.data);
    print(jsonData['slip']);

    var result = Slip.fromMap(jsonData['slip']);
    print(result);

    return result;
  }

  static Future<Border> getBorder() async {
    var _dio = Dio();
    var res = await _dio.get('https://www.boredapi.com/api/activity');
    var result = Border.fromMap(res.data);
    return result;
  }
}
