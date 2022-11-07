import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String phoneNo = '';

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){},
        backgroundColor: Colors.pink[500],
      ),

      appBar: AppBar(
        title: Text('Student App'),
        backgroundColor: Colors.pink[500],
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(50.0, 0.0, 60.0, 0.0),
          color: Colors.blue[100],
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //alligns the text at the center
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Pesu lads',
                  style: TextStyle(
                      fontSize: 50,
                      // backgroundColor: Colors.blue,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,


                      fontFamily: 'Lato'),
                ),
                // Image.asset(
                //   'assets/images/1666689451781.jpg',
                //   height: 280,
                //   width: 280,
                //
                // ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/1666689451781.jpg'),
                  radius: 100.0,
                ),
                Container(
                  child: Text('Rajgopal',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          // backgroundColor: Colors.blue,
                          color: Colors.black,
                          fontFamily: 'Lato')),
                ),
                Text('SRN:PES2UG21CS419',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        // backgroundColor: Colors.blue,
                        color: Colors.black,
                        fontFamily: 'Lato')),
                //
                Container(
                  margin: EdgeInsets.fromLTRB(30.0, 0.0, 60.0, 0.0),
                  child: TextField(
                    autofocus: true,

                    decoration: InputDecoration(
                      labelText: 'Status',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.pink),
                      )

                    ),
                    onChanged: (val) {
                      setState(() {
                        phoneNo = val;
                      });
                    },
                    // keyboardType: TextInputType.phone,


                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Present');
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text('present'),



                ),
              ],
            ),
          ),
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
