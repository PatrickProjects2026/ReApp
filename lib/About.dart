import 'package:REGROUP/Routine.dart';
import 'package:REGROUP/main.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const About());
}

class About extends StatelessWidget {
  const About({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ASI'),
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

  String _locationMessage = '';
  void _getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      _locationMessage =
          'Latitude: ${position.latitude}, Longitude: ${position.longitude}';
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
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/back2.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: [
              Text(''),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // background
                  onPrimary: Colors.white, // foreground
                ),
                icon: Icon(
                  Icons.home,
                  size: 17,
                ),
                label: const Text(
                  'Home',
                  style: TextStyle(fontSize: 13.0, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
              Text(""),
              Spacer(),
              Text(
                'REGROUP',
                style: TextStyle(fontSize: 13.0, color: Colors.white),
              ),
              Text(
                '084 648 9220',
                style: TextStyle(fontSize: 13.0, color: Colors.white),
              ),
              Text(
                'npchamane1@gmail.com',
                style: TextStyle(fontSize: 13.0, color: Colors.white),
              ),
              Spacer(),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // background
                  onPrimary: Colors.white, // foreground
                ),
                icon: Icon(
                  Icons.home,
                  size: 17,
                ),
                label: const Text(
                  'Routine',
                  style: TextStyle(fontSize: 13.0, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Routine()),
                  );
                },
              ),
              Text("")
            ]))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

Widget cont1(context) {
  return Container(
      width: 300, // Set the width of the container
      height: 230, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: Colors.black, // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: Row(
        children: [
          Text(" "),
          Flexible(
            flex: 1, // Flex factor, adjust as needed
            child: Text('''(Investing for Cashflow)

Cashflow 
i) Assets Ownership 
ii) Assets Cashflow 
iii) Assets Repossession/protection
iv) Health & Fitness
''', style: TextStyle(fontSize: 13.0, color: Colors.white)),
          ),
        ],
      ));
}

Widget que(context, text_, height_) {
  return Container(
      width: 280, // Set the width of the container
      height: height_, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: Colors.white, // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: Row(
        children: [
          Text(" "),
          Flexible(
            flex: 1, // Flex factor, adjust as needed
            child: Text('''$text_''',
                style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ));
}

Widget header(context) {
  return Row(
    children: [
      Spacer(),
      Text(
        '  ASSISTANT',
        style: TextStyle(fontSize: 23.0, color: Colors.white),
      ),
      Spacer(),
      ClipOval(
        child: Image.asset(
          'assets/round.gif',
          fit: BoxFit.cover,
          width: 50.0,
          height: 50.0,
        ),
      ),
      Spacer()
    ],
  );
}

Widget menu(context) {
  return Row(children: [
    Spacer(),
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.black, // background
        onPrimary: Colors.white, // foreground
      ),
      icon: Icon(
        Icons.home,
        size: 17,
      ),
      label: const Text(
        'Tasks',
        style: TextStyle(fontSize: 13.0, color: Colors.white),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
      },
    ),
    Text(" "),
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.black, // background
        onPrimary: Colors.white, // foreground
      ),
      icon: Icon(
        Icons.add_home,
        size: 17,
      ),
      onPressed: () {
        // Navigate back to first route when tapped.
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
      },
      label: const Text(
        'Meetings',
        style: TextStyle(fontSize: 13.0, color: Colors.white),
      ),
    ),
    Text(" "),
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.black, // background
        onPrimary: Colors.white, // foreground
      ),
      icon: Icon(
        Icons.add_home,
        size: 17,
      ),
      onPressed: () {
        // Navigate back to first route when tapped.
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
      },
      label: const Text(
        'Routine',
        style: TextStyle(fontSize: 13.0, color: Colors.white),
      ),
    ),
    Spacer()
  ]);
}
