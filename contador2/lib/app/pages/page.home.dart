import 'package:contador2/app/shared/widgets/circleAvatars/widget.circleAvatar.default.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int count = 0, max = 0, min = 0;

  void _refresh() {
    setState(() {
      count = 0;
      max = 0;
      min = 0;
    });
  }

  void _incrementCounter({int value = 1}) {
    setState(() {
      count += value;
      if (count > max) max = count;
    });
  }

  void _decrementCounter({int value = 1}) {
    setState(() {
      count -= value;
      if (count < min) min = count;
    });
  }

  static const _divider = SizedBox(
    height: 20.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
             _divider,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WidgetCircleAvatarDefault(
                  label: 'Max',
                  value: '$max',
                ),
                WidgetCircleAvatarDefault(
                  label: 'Min',
                  value: '$min',
                  color: Colors.red,
                ),
              ],
            ),
             _divider,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white,
                    ),
                  ),
                  child: Text(
                    '+1',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: _incrementCounter,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.black,
                    ),
                  ),
                  child: Text(
                    '-1',
                  ),
                  onPressed: _decrementCounter,
                ),
              ],
            ),
             _divider,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white,
                    ),
                  ),
                  child: Text(
                    '+2',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    _incrementCounter(value: 2);
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.black,
                    ),
                  ),
                  child: Text('-2'),
                  onPressed: () {
                    _decrementCounter(value: 2);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: _refresh,
      ),
    );
  }
}
