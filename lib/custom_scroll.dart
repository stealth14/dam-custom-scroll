import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScroll extends StatelessWidget {
  final List<String> fruits = ["Apple", "Banana", "Pear", "Orange", "Kiwi"];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              print("index $index");
              return Container(
                alignment: Alignment.center,
                color: Colors.lightGreen[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ],
    );
  }
}
