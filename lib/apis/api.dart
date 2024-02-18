import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:reverpodestest/models/itemModel.dart';

class Apis {
  Future<List<ItemModel>> getList() async {
    try {
      final url = 'https://used.pythonanywhere.com/api/Items/';
      final respons = await http.get(Uri.parse(url));

      switch (respons.statusCode) {
        case 200:
          List data = jsonDecode(respons.body);
          List<ItemModel> datalist =
              data.map((e) => ItemModel.fromJson(e)).toList();
          return datalist;

        default:
          throw Exception(respons.reasonPhrase);
      }
    } on Exception catch (_) {
      rethrow;
    }
  }
}

final itemApilist = Provider((ref) => Apis());
