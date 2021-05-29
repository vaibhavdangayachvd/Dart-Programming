import 'dart:async';

import 'package:dio/dio.dart';

void main()async{
  var a=await Dio().get('http://google.co.in');
  print(a.data.runtimeType);
}