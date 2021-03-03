import "package:flutter/material.dart";

/// Roadmap:
/// 1) [] Build and Run empty app
/// 2) [] Change Application Name (using flutter_launcher_name)
/// 3) [] Change Application Icon (using flutter_launcher_icons)
/// 4) [] Setup resources
/// 5) [] Create own empty "StrvApp", setup theme
/// 6) [] Create MainScreen with bottom navigation and three tabs
/// 7) [] Add Fimber for logging
/// 8) [] Implement empty HomeFeed Page
/// 9) [] Use HomeFeed page inside MainScreen
/// 10) [] Add Bloc library
/// 11) [] Create empty Cubit structure for HomeFeed
/// 12) [] Use HomeFeed Cubit in HomeFeed page and prepare state handling
/// 13) [] To get data, prepare Comics DTO and model entity
/// 14) [] Setup DI and ApiProvider
/// 15) [] Create Usecase to get newest comics and comics by ID
/// 16) [] Generate DI classes
/// 17) [] Implement fetchData logic to HomeFeed Cubit
/// 18) [] Add and setup HomeFeed paging controller
/// 19) [] Create Comics Detail page
/// 20) [] Setup AppRouter for navigation
/// 21) [] Move HomeFeedCubit provide into router
///
/// Optional
/// [] Add shimmering loading items widget for HomeFeed
/// [] Add pull to refresh to HomeFeed
/// [] Implement Random Comics page, Cubit with dataloading
/// [] Use Hive for local comics storage and caching
/// [] Use SharedPreferences to store newest comics ID (Used on Random Comics page)
///
/// Low Priority
/// [] Implement Setting page
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
