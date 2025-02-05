import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_application_1/ui/utilites/text_styles.dart';

var BaseURL = "https://task.teamrabbil.com/api/v1";
var RequestHeader={" Content-Type": "application/json"};


Future<bool> loginRequest(FormValues) async {

  var URL =Uri.parse("${BaseURL}/login");
  var PostBody =json.encode(FormValues);
  var response=await http.post(URL,headers: RequestHeader,body:PostBody);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);
  if(ResultCode==200&& ResultBody['status']=='success'){
    SuccessToast("Request Success");
    return true;
  }
  else {
    ErrorToast("Request Fail");
    return false;
  }
}