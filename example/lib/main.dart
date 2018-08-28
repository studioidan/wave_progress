import 'package:flutter/material.dart';
import 'package:wave_progress_widget/wave_progress.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Wave Progress Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _progress = 50.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            WaveProgress(180.0, Colors.blue, Colors.blueAccent, _progress),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Slider(
                  max: 100.0,
                  min: 0.0,
                  value: _progress,
                  onChanged: (value) {
                    setState(() => _progress = value);
                  }),
            ),
            Text(
              '${_progress.round()}',
              style: TextStyle(color: Colors.blueAccent, fontSize: 40.0),
            )
          ],
        ),
      ),
    );
  }
}
