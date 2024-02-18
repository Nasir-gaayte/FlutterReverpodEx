import 'package:reverpodestest/apis/api.dart';
import 'package:reverpodestest/models/itemModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allItem = FutureProvider<List<ItemModel>>((ref) async {
  return ref.watch(itemApilist).getList();
});
