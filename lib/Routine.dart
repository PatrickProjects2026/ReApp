import 'package:REGROUP/main.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const Routine());
}

class Routine extends StatelessWidget {
  const Routine({super.key});

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

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
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

    //type,date,title,details
    final List<Map<String, String>> birthdays_ = [
      {
        "type": "Birthdays",
        "date": "10-1-1972",
        "title": "FODO",
        "details": "Sandile S"
      },
      {
        "type": "Birthdays",
        "date": "12-4-1991",
        "title": "Skay",
        "details": "Skay"
      },
      {
        "type": "Birthdays",
        "date": "3-9-1996",
        "title": "TNG",
        "details": "Thandeka N"
      },
      {
        "type": "Birthdays",
        "date": "17-12-2017",
        "title": "LISA",
        "details": "TALISA"
      },
      {
        "type": "Birthdays",
        "date": "11-5-1992",
        "title": "NPC",
        "details": "NPCHAMANE"
      },
      {
        "type": "Birthdays",
        "date": "6-6-1992",
        "title": "MIC",
        "details": "MIC"
      },
      {
        "type": "Birthdays",
        "date": "18-4-1996",
        "title": "Phumlani",
        "details": "S"
      },
      {
        "type": "Birthdays",
        "date": "16-6-1994",
        "title": "Bongeka",
        "details": "N"
      },
      {
        "type": "Birthdays",
        "date": "12-7-1994",
        "title": "Pinky",
        "details": "C"
      },
      {
        "type": "Birthdays",
        "date": "13-10-1989",
        "title": "Lungisane",
        "details": "S"
      },
      {
        "type": "Birthdays",
        "date": "14-11-1999",
        "title": "Thobeka L",
        "details": "C"
      },
      {
        "type": "Birthdays",
        "date": "2-12-1989",
        "title": "Elizabeth ",
        "details": "Mathe"
      },
      {
        "type": "Birthdays",
        "date": "16-12-1989",
        "title": "Masiya",
        "details": "Sya"
      },
      {
        "type": "Birthdays",
        "date": "25-12-1996",
        "title": "Cam",
        "details": "Breezy"
      },
      {
        "type": "Birthdays",
        "date": "25-12-1992",
        "title": "Sya",
        "details": "Nzama"
      },
      {
        "type": "Birthdays",
        "date": "17-8-2021",
        "title": "Imi",
        "details": "Ndondo"
      },
      {
        "type": "Birthdays",
        "date": "18-7-1918",
        "title": "Nelson Mandela",
        "details": "NM"
      },
      {
        "type": "Birthdays",
        "date": "3-7-1787",
        "title": "Shaka Zulu",
        "details": "SA"
      },
      {
        "type": "Birthdays",
        "date": "5-11-1280",
        "title": "Mansa Musa",
        "details": "Mali"
      },
      {
        "type": "Birthdays",
        "date": "3-2-544BCE",
        "title": "Sun Tzu",
        "details": "China"
      },
      {
        "type": "Birthdays",
        "date": "9-3-1943",
        "title": "Bobby Fischer",
        "details": "Chicago Illinois"
      }
    ];

    final List<Map<String, String>> holidays_ = [
      {
        "type": "Holidays",
        "date": "1-1",
        "title": "New Year's Day",
        "details": "New Year's Day"
      },
      {
        "type": "Holidays",
        "date": "21-3",
        "title": "Human Rights Day",
        "details": "Human Rights Day"
      },
      {
        "type": "Holidays",
        "date": "1-4",
        "title": "Family Day",
        "details": "Family Day"
      },
      {
        "type": "Holidays",
        "date": "24-4",
        "title": "Freedom Day",
        "details": "Freedom Day"
      },
      {
        "type": "Holidays",
        "date": "1-5",
        "title": "Workers Day",
        "details": "Workers Day"
      },
      {
        "type": "Holidays",
        "date": "29-5",
        "title": "Public holiday",
        "details": "Public holiday"
      },
      {
        "type": "Holidays",
        "date": "16-6",
        "title": "Youth Day",
        "details": "Youth Day"
      },
      {
        "type": "Holidays",
        "date": "9-8",
        "title": "National Womens Day",
        "details": "National Womens Day"
      },
      {
        "type": "Holidays",
        "date": "24-9",
        "title": "Heritage Day",
        "details": "Heritage Day"
      },
      {
        "type": "Holidays",
        "date": "16-12",
        "title": "Day of Reconciliation",
        "details": "Day of Reconciliation"
      },
      {
        "type": "Holidays",
        "date": "25-12",
        "title": "Christmas Day",
        "details": "Christmas Day"
      },
      {
        "type": "Holidays",
        "date": "26-12",
        "title": "Day of Goodwill",
        "details": "Day of Goodwill"
      },
      {
        "type": "Holidays",
        "date": "31-10-2024",
        "title": "Diwali",
        "details": "Diwali"
      },
    ];

    final List<Map<String, String>> events_ = [
      {
        "type": "Events",
        "date": "10-10-2024",
        "title": "Skul Admin",
        "details": "Skul Admin"
      },
      {
        "type": "Events",
        "date": "29-10-2024",
        "title": "House Ensure",
        "details": "House Ensure 200"
      },
      {
        "type": "Events",
        "date": "5-11-2024",
        "title": "Learners",
        "details": "Learning c10"
      },
      {
        "type": "Events",
        "date": "29-11-2024",
        "title": "Emergency Fund",
        "details": "Emergency Fund 12k"
      },
      {
        "type": "Events",
        "date": "11-5-2024",
        "title": "3 Lucky coins",
        "details": "(detox)"
      },
      {
        "type": "Events",
        "date": "23-8-2024",
        "title": "4th coin",
        "details": "(rename accs)"
      },
      {
        "type": "Events",
        "date": "30-9-2024",
        "title": "Bank Insurance",
        "details": ""
      },
      {"type": "Events", "date": "7-10-2024", "title": "Matt", "details": ""},
      {
        "type": "Events",
        "date": "6-7-2024",
        "title": "Durban july",
        "details": ""
      },
      {
        "type": "Events",
        "date": "27-5-2010",
        "title": "Safety At Sports and Recreational Events Act 2",
        "details": ""
      },
      {
        "type": "Events",
        "date": "19-6-2006",
        "title": "Childrens Act 38",
        "details": "2005"
      },
      {
        "type": "Events",
        "date": "2-2-2000",
        "title": "Promotion of Access to Information Act",
        "details": "2000"
      },
      {
        "type": "Events",
        "date": "1-6-1990",
        "title": "National Key Points Act, No. 102",
        "details": "1980"
      },
      {
        "type": "Events",
        "date": "1-3-1980",
        "title": "Protection of Information Act",
        "details": "1982"
      },
      {
        "type": "Events",
        "date": "20-3-2003",
        "title": "US Iraq War to ",
        "details": "18-12-2011"
      },
      {
        "type": "Events",
        "date": "2-5-2011",
        "title": "U.S kill Osama bin Laden",
        "details": "al-Qaeda,Pakistan"
      },
      {
        "type": "Events",
        "date": "14–3-2015",
        "title": "2015 Cricket World Cup Australia",
        "details": "Australia"
      },
      {
        "type": "Events",
        "date": "11-10-3024",
        "title": "Coin 2003",
        "details": "fri 6:13"
      }
    ];

    final List<Map<String, String>> News = [
      {
        "type": "News",
        "date": "15-3-2020",
        "title": "State of emergencyCovid19",
        "details": "Cyril Ramaphosa Declares state of emergency,Covid19"
      },
      {
        "type": "News",
        "date": "8-10-2024",
        "title": "Game over, Juego terminado",
        "details": "jeu terminé"
      },
      {
        "type": "News",
        "date": "9-10-2024",
        "title": "oh My God, ay dios mío",
        "details": "oh mon Dieu"
      },
      {
        "type": "News",
        "date": "1-4-2024",
        "title": "Puedes verlo o no, pero todo sucede por una razón.",
        "details":
            "vous pouvez le voir ou non, mais tout arrive pour une raison."
      },
      {
        "type": "News",
        "date": "11-1-2024",
        "title":
            "A wicked man He wink with his eyes, he speak with his feet, he teach with his fingers.",
        "details": "I was, i have been, and will remain solid."
      },
      {
        "type": "News",
        "date": "11-2-2024",
        "title":
            "Un hombre malvado Guiña los ojos, habla con los pies, enseña con los dedos.",
        "details": "Fui, he pasado y seguiré siendo sólido."
      },
      {
        "type": "News",
        "date": "11-3-2024",
        "title":
            "Un méchant homme Il cligne des yeux, il parle avec ses pieds, il enseigne avec ses doigts.",
        "details": "J'étais, j'ai bwen, et je resterai solide."
      },
      {
        "type": "News",
        "date": "20-6-1978",
        "title": "Copyright Act 1987",
        "details": "1987"
      },
      {
        "type": "News",
        "date": "26-3-1978",
        "title": "Patents Act",
        "details": "1978"
      },
      {
        "type": "News",
        "date": "26-4-1992",
        "title": " Births and Deaths Registration Act",
        "details": "1992"
      },
      {
        "type": "News",
        "date": "8-4-2009",
        "title": "Companies Act 71 of 2008",
        "details": "2008"
      },
      {
        "type": "News",
        "date": "30-8-1996",
        "title": "National Road Traffic Act 93",
        "details": "1996"
      },
      {
        "type": "News",
        "date": "21-6-1913",
        "title": "Native Lands Act ",
        "details": "1913"
      },
      {
        "type": "News",
        "date": "7-6-1953",
        "title": "Wills Act 7 Ammend 1992",
        "details": "Ammend 1992"
      }
    ];

    List<Map<String, dynamic>> filterItemsByType(
        List<Map<String, dynamic>> items, String month) {
      return items
          .where((item) => item['date'].split('-')[1] == month)
          .toList();
    }

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
              Text(
                'ROUTINE',
                style: TextStyle(fontSize: 13.0, color: Colors.white),
              ),
              Text(""),
              Container(
                height: 500,
                width: 400,
                child: DefaultTabController(
                  length: 4, // Number of tabs
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(icon: Icon(Icons.redeem, color: Colors.white)),
                          Tab(icon: Icon(Icons.today, color: Colors.white)),
                          Tab(
                              icon: Icon(Icons.event_available,
                                  color: Colors.white)),
                          Tab(
                              icon: Icon(Icons.library_books,
                                  color: Colors.white)),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Center(
                                child: SizedBox(
                                    height: 500,
                                    width: 300,
                                    child: ListView(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: <Widget>[
                                          myTitle(context, "BIRTHDAYS", 0),
                                          myTitle(context, "JANUARY", 1),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '1')),
                                          myTitle(context, "FEBRUARY", 2),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '2')),
                                          myTitle(context, "MARCH", 3),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '3')),
                                          myTitle(context, "APRIL", 4),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '4')),
                                          myTitle(context, "MAY", 5),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '5')),
                                          myTitle(context, "JUNE", 6),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '6')),
                                          myTitle(context, "JULY", 7),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '7')),
                                          myTitle(context, "AUGUST", 8),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '8')),
                                          myTitle(context, "SEPTEMBER", 9),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '9')),
                                          myTitle(context, "OCTOBER", 10),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '10')),
                                          myTitle(context, "NOVEMBER", 11),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '11')),
                                          myTitle(context, "DECEMBER", 12),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  birthdays_, '12')),
                                        ]))),
                            Center(
                                child: SizedBox(
                                    height: 500,
                                    width: 300,
                                    child: ListView(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: <Widget>[
                                          myTitle(context, "HOLIDAYS", 0),
                                          myTitle(context, "JANUARY", 1),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '1')),
                                          myTitle(context, "FEBRUARY", 2),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '2')),
                                          myTitle(context, "MARCH", 3),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '3')),
                                          myTitle(context, "APRIL", 4),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '4')),
                                          myTitle(context, "MAY", 5),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '5')),
                                          myTitle(context, "JUNE", 6),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '6')),
                                          myTitle(context, "JULY", 7),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '7')),
                                          myTitle(context, "AUGUST", 8),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '8')),
                                          myTitle(context, "SEPTEMBER", 9),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '9')),
                                          myTitle(context, "OCTOBER", 10),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '10')),
                                          myTitle(context, "NOVEMBER", 11),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '11')),
                                          myTitle(context, "DECEMBER", 12),
                                          tab3(
                                              context,
                                              filterItemsByType(
                                                  holidays_, '12')),
                                        ]))),
                            Center(
                                child: SizedBox(
                                    height: 500,
                                    width: 300,
                                    child: ListView(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: <Widget>[
                                          myTitle(context, "EVENTS", 0),
                                          myTitle(context, "JANUARY", 1),
                                          tab3(context,
                                              filterItemsByType(events_, '1')),
                                          myTitle(context, "FEBRUARY", 2),
                                          tab3(context,
                                              filterItemsByType(events_, '2')),
                                          myTitle(context, "MARCH", 3),
                                          tab3(context,
                                              filterItemsByType(events_, '3')),
                                          myTitle(context, "APRIL", 4),
                                          tab3(context,
                                              filterItemsByType(events_, '4')),
                                          myTitle(context, "MAY", 5),
                                          tab3(context,
                                              filterItemsByType(events_, '5')),
                                          myTitle(context, "JUNE", 6),
                                          tab3(context,
                                              filterItemsByType(events_, '6')),
                                          myTitle(context, "JULY", 7),
                                          tab3(context,
                                              filterItemsByType(events_, '7')),
                                          myTitle(context, "AUGUST", 8),
                                          tab3(context,
                                              filterItemsByType(events_, '8')),
                                          myTitle(context, "SEPTEMBER", 9),
                                          tab3(context,
                                              filterItemsByType(events_, '9')),
                                          myTitle(context, "OCTOBER", 10),
                                          tab3(context,
                                              filterItemsByType(events_, '10')),
                                          myTitle(context, "NOVEMBER", 11),
                                          tab3(context,
                                              filterItemsByType(events_, '11')),
                                          myTitle(context, "DECEMBER", 12),
                                          tab3(context,
                                              filterItemsByType(events_, '12')),
                                        ]))),
                            Center(
                                child: SizedBox(
                                    height: 500,
                                    width: 300,
                                    child: ListView(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: <Widget>[
                                          myTitle(context, "NEWS", 0),
                                          myTitle(context, "JANUARY", 1),
                                          tab3(context,
                                              filterItemsByType(News, '1')),
                                          myTitle(context, "FEBRUARY", 2),
                                          tab3(context,
                                              filterItemsByType(News, '2')),
                                          myTitle(context, "MARCH", 3),
                                          tab3(context,
                                              filterItemsByType(News, '3')),
                                          myTitle(context, "APRIL", 4),
                                          tab3(context,
                                              filterItemsByType(News, '4')),
                                          myTitle(context, "MAY", 5),
                                          tab3(context,
                                              filterItemsByType(News, '5')),
                                          myTitle(context, "JUNE", 6),
                                          tab3(context,
                                              filterItemsByType(News, '6')),
                                          myTitle(context, "JULY", 7),
                                          tab3(context,
                                              filterItemsByType(News, '7')),
                                          myTitle(context, "AUGUST", 8),
                                          tab3(context,
                                              filterItemsByType(News, '8')),
                                          myTitle(context, "SEPTEMBER", 9),
                                          tab3(context,
                                              filterItemsByType(News, '9')),
                                          myTitle(context, "OCTOBER", 10),
                                          tab3(context,
                                              filterItemsByType(News, '10')),
                                          myTitle(context, "NOVEMBER", 11),
                                          tab3(context,
                                              filterItemsByType(News, '11')),
                                          myTitle(context, "DECEMBER", 12),
                                          tab3(context,
                                              filterItemsByType(News, '12')),
                                        ]))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
              Text("")
            ]))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

Widget tab1(context, items) {
  return ListView.builder(
    itemCount: items.length, // Number of items in the array
    itemBuilder: (context, index) {
      final item = items[index]; // Get the current item
      String month_ = item['date'].split('-')[1];

      if (month_ == "11") {
        return Table(
            border: TableBorder.all(
                color: Colors.white, // Set border color
                width: 2), // Adds borders to the table
            columnWidths: {
              0: FixedColumnWidth(100.0), // Fixed width for column 0
              1: FlexColumnWidth(), // Flexible width for column 1
              2: FixedColumnWidth(100.0), // Fixed width for column 2
            },
            children: [
              TableRow(children: [
                TableCell(
                    child:
                        Center(child: myText_(context, item['date'] + month_))),
                TableCell(
                    child: Center(child: myText_(context, item['title']))),
                TableCell(
                    child: Center(child: myText_(context, item['details']))),
              ]),
            ]);
      }
    },
  );
}

Widget tab2(context, List<Map<String, dynamic>> items, newMonth) {
  return SizedBox(
      height: 60,
      width: 300,
      child: Expanded(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index]; // Get the current item

                // Ensure 'date' is not null and has valid format
                if (item['date'] == null || !item['date'].contains('-')) {
                  return SizedBox
                      .shrink(); // Return an empty widget if date is invalid
                }

                // Split date string and get month part
                String month_ = item['date'].split('-')[1];

                if (newMonth == month_) {
                  return Table(
                    border: TableBorder.all(
                      color: Colors.white, // Set border color
                      width: 2, // Set border width
                    ),
                    columnWidths: {
                      0: FixedColumnWidth(100.0), // Fixed width for column 0
                      1: FlexColumnWidth(), // Flexible width for column 1
                      2: FixedColumnWidth(100.0), // Fixed width for column 2
                    },
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Center(
                                child: myText_(
                                    context, '${item['date']} $month_')),
                          ),
                          TableCell(
                            child: Center(
                                child: myText_(
                                    context, item['title'] ?? 'No Title')),
                          ),
                          TableCell(
                            child: Center(
                                child: myText_(
                                    context, item['details'] ?? 'No Details')),
                          ),
                        ],
                      ),
                    ],
                  );
                }
              })));
}

Widget tab3(context, List<Map<String, dynamic>> items) {
  return SizedBox(
      height: 100,
      width: 300,
      child: Container(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index]; // Get the current item

                // Ensure 'date' is not null and has valid format
                if (item['date'] == null || !item['date'].contains('-')) {
                  return SizedBox
                      .shrink(); // Return an empty widget if date is invalid
                }

                // Split date string and get month part
                String month_ = item['date'].split('-')[1];

                // if (newMonth == month_) {
                return Table(
                  border: TableBorder.all(
                    color: Colors.white, // Set border color
                    width: 2, // Set border width
                  ),
                  columnWidths: {
                    0: FixedColumnWidth(100.0), // Fixed width for column 0
                    1: FlexColumnWidth(), // Flexible width for column 1
                    2: FixedColumnWidth(100.0), // Fixed width for column 2
                  },
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(
                              child: myText_(context, '${item['date']} ')),
                        ),
                        TableCell(
                          child: Center(
                              child: myText_(
                                  context, item['title'] ?? 'No Title')),
                        ),
                        TableCell(
                          child: Center(
                              child: myText_(
                                  context, item['details'] ?? 'No Details')),
                        ),
                      ],
                    ),
                  ],
                );
                // }
              })));
}

Widget myTitle(context, text_, month_) {
  DateTime now = DateTime.now(); // Get the current date and time
  int month = now.month; // Get the month (1 = January, 12 = December)

  Color col_ = Colors.black;
  if (month_ == month) {
    col_ = Color.fromARGB(255, 119, 120, 121);
  }
  return Container(
      width: 300, // Set the width of the container
      height: 30, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: col_, // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: myText_(context, " " + text_));
}

Widget myText_(context, text_) {
  return Text(
    text_,
    style: TextStyle(fontSize: 13.0, color: Colors.white),
  );
}

Widget myText_2(context, text_) {
  return Text(
    text_,
    style: TextStyle(fontSize: 13.0, color: Colors.black),
  );
}
