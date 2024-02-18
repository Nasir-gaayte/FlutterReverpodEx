import 'package:flutter/material.dart';
import 'package:reverpodestest/models/itemModel.dart';

class Detail extends StatelessWidget {
  ItemModel i;
  Detail({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(i.image.toString()),
          Text(
            i.item.toString(),
          ),
          Row(
            children: [Text('\$'), Text(i.price.toString())],
          )
        ],
      ),
    );
  }
}
