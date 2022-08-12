import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  AdjustConfig config = AdjustConfig('MyAppToken', AdjustEnvironment.sandbox);
  Adjust.start(config);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turito Teste',
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Testing Adjust SDK with Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    initPlatformState(); // <-- Initialise Adjust's SDK in here.
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.resumed:
        Adjust.onResume();
        break;
      case AppLifecycleState.paused:
        Adjust.onPause();
        break;
      case AppLifecycleState.detached:
        break;
    }
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Adjust > Appsflyer"),
              onPressed: (){},
            ),
            Container(height: 20.0),//SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text("Brasil > Anywhere"),
              onPressed: (){},
            ),
            Container(height: 20.0),
            ElevatedButton(
              child: const Text("Cruzeiro > Atlético"),
              onPressed: (){},
            ),
            Container(height: 20.0),
            IconButton(
              icon: const Icon(Icons.add_link_rounded),
              tooltip: 'Go to adjust page',
              onPressed: () {
                setState(() {

                });
              },
            ),
            Container(height: 20.0),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  void initPlatformState() {}
}
