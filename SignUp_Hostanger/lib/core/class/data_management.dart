
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:market/core/functions/checkinternet.dart';
import 'status_request.dart';
import 'package:http/http.dart' as http;

class DataManagement{
      Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
  try{
    if(await checkInternet()){
      var response  = await http.post(Uri.parse(linkurl), body: data);
      if(response.statusCode == 200 || response.statusCode == 201){
        Map responsebody = jsonDecode(response.body);
        print(responsebody);
        return Right(responsebody);
      }else{
        return left(StatusRequest.serverfailure);
      }
    }else{
      return left(StatusRequest.offlinefailure);
    }
  }catch(_){
    return left(StatusRequest.serverException);
  }
  }
}