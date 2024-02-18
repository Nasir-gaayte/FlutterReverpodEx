import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reverpodestest/models/itemModel.dart';
import 'package:reverpodestest/pages/detail.dart';
import 'package:reverpodestest/reverpod/allReverpod.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(allItem);

    return Scaffold(
      body: data.when(
        data: (data) {
          // List<ItemModel> datalist = data.map((e) => e).toList;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final ItemModel datalist = data[index];
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Detail(i: datalist),
                      ));
                    },
                    child: Image.network(
                      datalist.image.toString(),
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(datalist.item.toString())
                ],
              );
            },
          );
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
