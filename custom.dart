import 'package:flutter/material.dart';

class custom extends StatefulWidget {
  const custom({super.key});

  @override
  State<custom> createState() => _customState();
}

class _customState extends State<custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view.Custom"),
      ),
      body: Stack(
        children: [
          GridView.custom(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _buildGridItem(index);
                },
              ))
        ],
      ),
    );
  }
}

Widget _buildGridItem(int index) {
  return Container(
    margin: EdgeInsets.all(12),
    color: Colors.black,
    alignment: Alignment.center,
    child: Text(
      "$index",
      style: TextStyle(color: Colors.white),
    ),
  );
}
