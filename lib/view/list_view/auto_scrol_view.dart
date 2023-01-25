import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class AutoList extends StatefulWidget {
  const AutoList({Key? key}) : super(key: key);

  @override
  State<AutoList> createState() => _AutoListState();
}

class _AutoListState extends State<AutoList> {
  late AutoScrollController controller;
  final scrollDirection = Axis.vertical;
  late List<List<int>> randomList;
  @override
  void initState() {
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
    // TODO: implement initState

    super.initState();
    _scrollToIndex();
  }

  Future _scrollToIndex() async {
    await controller.scrollToIndex(10, preferPosition: AutoScrollPosition.end);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("autoScroll"),
      ),
      body: ListView(
        scrollDirection: scrollDirection,
        controller: controller,
        children: <Widget>[
          ...List.generate(30, (index) {
            return AutoScrollTag(
              key: ValueKey(index),
              controller: controller,
              index: index,
              child: Container(
                height: 100,
                color: Colors.red,
                margin: EdgeInsets.all(10),
                child: Center(child: Text('index: $index')),
              ),
              highlightColor: Colors.black.withOpacity(0.1),
            );
          }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _scrollToIndex,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
