import 'package:flutter/material.dart';

class CoderPage extends StatefulWidget {
  const CoderPage({Key? key}) : super(key: key);

  @override
  State<CoderPage> createState() => _CoderPageState();
}

class _CoderPageState extends State<CoderPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _currentIndex == 0
              ? Container(
                  height: 200,
                  color: Colors.red,
                )
              : SizedBox(),
          _currentIndex == 1
              ? Container(
                  height: 200,
                  color: Colors.green,
                )
              : SizedBox(),
          _currentIndex == 2
              ? Container(
                  height: 200,
                  color: Colors.yellow,
                )
              : SizedBox(),
        ],
      ),
      bottomNavigationBar: Card(
        child: Container(
          height: 50,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  icon: Icon(Icons.home,
                      color: _currentIndex == 0 ? Colors.blue : Colors.red)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  icon: Icon(Icons.person,
                      color: _currentIndex == 1 ? Colors.blue : Colors.red)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  icon: Icon(Icons.chat,
                      color: _currentIndex == 2 ? Colors.blue : Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
