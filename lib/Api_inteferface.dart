import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:untitled2/model_class.dart';
class ApiInterface{
  final http.Client client;
  ApiInterface(this.client);
  Future getdata()async{
    final response=await client.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if(response.statusCode==200){
        final users=jsonDecode(response.body);
        final items=[];
        for(int i=0; i<users.length; i++){
          items.add(ModelClass.fromJson(users[i]));
        }
        return items;
      }else{
        return response.statusCode;
      }

    }
  }
