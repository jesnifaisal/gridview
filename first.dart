import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "GridView.builder Sample",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2 / 1),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (grid[0]) {
                    Navigator.push;
                  }
                },
                child: Container(
                  color: const Color.fromARGB(255, 114, 172, 219),
                  margin: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    grid[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  )),
                ),
              );
            },
            itemCount: grid.length,
          )
        ],
      ),
    );
  }
}

final List grid = [
  "cat",
  "dog",
  "lion",
  "monkey",
  "apple",
  "grape",
  "mango",
  "orange",
];
