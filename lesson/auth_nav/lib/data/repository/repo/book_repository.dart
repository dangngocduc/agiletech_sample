import 'dart:convert';

import 'package:auth_nav/data/model/book_model.dart';
import 'package:auth_nav/data/repository/api/api.dart';
import 'package:dio/dio.dart';
import 'package:tuple/tuple.dart';

class BookRepository {
  static Future<Tuple2<List<HydraMember>, int>> bookList(String page) async {
    Response response = await Api.dio.get("books?page=$page");
    var jsonData = json.decode(response.data.toString());
    print("jsonData[index]: " + jsonData["@context"]);
    var hydraView = BookModel.fromJson(jsonData).hydraView;
    int lastView = int.parse(hydraView.hydraLast.split("=")[1]);
    return Tuple2(BookModel.fromJson(jsonData).hydraMember, lastView);
  }
}
