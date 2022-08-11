import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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

class _MyHomePageState extends State<MyHomePage> {



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
}
