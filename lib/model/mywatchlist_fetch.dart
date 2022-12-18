import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;

List<MyWatchList> listMyWatchListTotal = [];

Future<List<MyWatchList>> fetchMyWatchList() async {
  var url =
      Uri.parse('https://tugas-rafitohumam.up.railway.app/mywatchlist/json/');
  var response = await http.get(
    url,
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));
  List<MyWatchList> listMyWatchList = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchList.add(MyWatchList.fromJson(d));
      listMyWatchListTotal.add(MyWatchList.fromJson(d));
    }
  }
  return listMyWatchList;
}
