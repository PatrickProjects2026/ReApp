import 'package:REGROUP/main.dart';
import 'package:REGROUP/About.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const Que1());
}

class Que1 extends StatelessWidget {
  const Que1({super.key});

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
                  ' Who help student decide & start?',
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
              cont1(context),
              Column(
                children: [
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Text(""),
                        que(context,
                            '''1) The problem is not that there's lack of information, problem is That There's too much information :
*true
*false'''),
                        Text(""),
                        que(context,
                            '''2) The problem is not that there's lack of money, problem is That There's too much money:
*true
*false
'''),
                        Text(""),
                        que(context,
                            '''3) When you know yourself, then will know the career that you like.
*true
*false'''),
                        Text(""),
                        que(context, '''
4) At this point in your life, do you want to be a:
*Worker
*Boss'''),
                        Text(""),
                        que(context,
                            '''5) Whats the difference between self employed and employee.'''),
                        Text(""),
                        que(context, '''
6) Select 2 words defining the work document.
*Resume
*CV
*Profile'''),
                        Text(""),
                        que(context, '''
7) Which law guards and protect workers.
*Companies Act
*BEE Act
*Employment Act'''),
                        Text(""),
                        que(context, '''
8) Skills development involves more practical then theory.
*True
*False'''),
                        Text(""),
                        que(context, '''
9) Whats the difference between the following:
*Skill
*Qualification'''),
                        Text(""),
                        que(context, '''
10) In your own opinion, Career Guidance should be introduced at what education level. 
*primary
*beyond'''),
                        Text(""),
                        que(context, '''
11) If you don't work but money work for you, which group you belong:
*Employed
*Self employed
*Investor'''),
                        Text(""),
                        que(context, '''
12) The subject of wealth can be taught and learned.
*true
*false'''),
                        Text(""),
                        que(context, '''
13) Which is the most appropriate method of applying for a job.
*fax
*post
*email'''),
                        Text(""),
                        que(context, '''
14) Which is the most appropriate way of finding your best career.
*school
*home
*research'''),
                        Text(""),
                        que(context, '''
15) Whats the difference job security and financial independence.'''),
                      ],
                    ),
                  ),
                ],
              ),
              Text(""),
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
                  'Version 2.4',
                  style: TextStyle(fontSize: 13.0, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => About()),
                  );
                },
              ),
              Text("")

              // menu(context),
            ]))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

Widget cont1(context) {
  return Container(
      width: 300, // Set the width of the container
      height: 200, // Set the height of the container
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
            child: Text('''(Engaging Industry)
With all this information, how do I determine my position in the economy, in a company, the country or specific parts of the world. 

i) Skills Development 
ii) Career Guidance (primary, beyond)
iii) Recruiting''', style: TextStyle(fontSize: 13.0, color: Colors.white)),
          ),
        ],
      ));
}

Widget que(context, text_) {
  return Container(
      width: 280, // Set the width of the container
      height: 100, // Set the height of the container
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
