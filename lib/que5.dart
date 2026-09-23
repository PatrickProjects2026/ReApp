import 'package:REGROUP/main.dart';
import 'package:REGROUP/About.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const Que5());
}

class Que5 extends StatelessWidget {
  const Que5({super.key});

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
                  '5) Who help Investor reach market?',
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
                        que(
                            context,
                            '''1) Can you define the 4 quadrants & your position? 
*E -        
*B - 
*S -        
*I -''',
                            170.0),
                        Text(""),
                        que(
                            context,
                            '''2) OPT & OPM stands for other peoples time & other peoples money.
*true 
*false ''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''3) Most rich receive 70% of income from investments & 30% from wages. 
*true 
*false''',
                            140.0),
                        Text(""),
                        que(
                            context,
                            '''4) Can have great business cashflow but needs to buy assets with greater cashflow. Passive income from assets Rising over living expences.
*true
*false ''',
                            160.0),
                        Text(""),
                        que(
                            context,
                            '''5) E- Look for safety secure job with good benefits. Seek job security.
*true 
*false ''',
                            160.0),
                        Text(""),
                        que(
                            context,
                            '''6) S- Look for hourly rate or % commission. Be own boss or do own thing.
*true
*false''',
                            130.0),
                        Text(""),
                        que(
                            context,
                            '''7) B- Look for new president or change of biz laws. Can vacate at return to better business.
*true
*false''',
                            160.0),
                        Text(""),
                        que(
                            context,
                            '''8) I-Look for internal rate of return or net rate of return.
*true
*false''',
                            130.0),
                        Text(""),
                        que(
                            context,
                            '''9) Business Systems 
• *Traditional - Develop own sys
• *Franchise - Buy existing sys
• *Network Marketing - Part of ex sys 
*true
*false''',
                            170.0),
                        Text(""),
                        que(
                            context,
                            '''10) Select 6 Levels of Investors 
• *Borrowers - Invest with borrowed money.
• *Savers - Keep savings for investments.
• *Smart investors - Educated investing in capital gains without participation.
• *Long-term investors - Long term objectives.
• *Sophisticated - Skilled in diversifying.
• Capitalists- Use other peoples time , money and talent . ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''11) Select 5 common stocks :

*Common stock 
*Preffered stock 
*Convertible stock
*My stock 
*Technical stock
*Industrial stock''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''12) Select 4 real estate investments :
*Single family 
*Commercial office 
*Local office 
*Warehouse
*Industrial 
*Raw Land''',
                            160.0),
                        Text(""),
                        que(
                            context,
                            '''13) Select 3 Sector funds more appropriate : 
*Income fund
*Emergency fund 
*Aggressive growth fund 
*Country fund''',
                            130.0),
                        Text(""),
                        que(
                            context,
                            '''14) Select 4 common insurances :
*Life
*Home
*Breath 
*Car 
*Health''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''15) Different investment procedures 
• *Buy,hold,pray (long)
• *Sell then buy (short)
• *Option buying & selling (trade)
• *Brokering ( trade no position )
• *Savings ( collecting )
*true
*false ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''16) Select 6 types of Investors 
• *Gamblers 
• *Speculators 
• *Traders
• *Savers 
• *Players 
• *Dreamers 
• *Losers ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''17) This is important, Basic Investment Rules  • *Rule 1 ( What kind of income youre working for )-Earned income -Portfolio income -Passive income 
*true
*false ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''18) #Rule 2 ( Convert earned income to passive or portfolio ) 
*true
*false ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''19) #Rule 3 ( Secure income by buying security to convert it to passive or portfolio )
*true
*false  ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''20) #Rule 4 ( Its the investor that is an asset or liability )
*true
*false ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''21) #Rule 5 ( Investor is prepared for whatever happens, dont predicts what and when will happen)
*true
*false ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''22) #Rule 6 (with education and experience and find a good deal, money will find you or will find it )
*true
*false  ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''23( #Rule 7 ( Ability to evaluate risk and reward )
*true
*false  ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''24) The 3 Es means :
• *Education 
• *Experience 
• *Excessive Cash 
*true
*false ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''25) Allow yourself to aim for a good gain and take a good loss. This means good debt and bad debt. Good expenses and bad experiences. Have an exit strategy just like marriage & divorce, but exit must be as fun as getting in.
*true
*false ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''26) Sophisticated investor is aware of, select 3: 
• *Tax law 
• *Corporate Law 
• *Transparent Law 
• *Securities Law  ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''27) How to get rich quick 
* Both me & that boss cant afford this property but my business can. The debt and tax break can only be 
for the business.The laws are on the businesss favor, thats the power of a corporation.
 *true 
 *false  ''',
                            180.0),
                        Text(""),
                        que(
                            context,
                            '''28) Why build a business 
• *Excessive cashflow 
• *To sell it 
• *to invest ?
• *start a company. ''',
                            180.0),
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
            child: Text(
                '''(Investing vs Betting) You'll never reap what you never saw. Will never 
plant without the seeds. If was successful in planting your seeds, must not forget to water. Any investment 
that you dont water or maintain is a gamble. 

i) Funds Raising 
ii) Capital gains 
iii) Cashflow gains
''',
                style: TextStyle(fontSize: 13.0, color: Colors.white)),
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
