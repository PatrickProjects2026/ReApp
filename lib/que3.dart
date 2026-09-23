import 'package:REGROUP/main.dart';
import 'package:REGROUP/About.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const Que3());
}

class Que3 extends StatelessWidget {
  const Que3({super.key});

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
                  '3) Who help you start business?',
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
                            '''1.What is the purpose of financial statements in business?
    - Financial statements, including the balance sheet and income statement, provide a snapshot of a company's financial health and performance.''',
                            130.0),
                        Text(""),
                        que(
                            context,
                            '''2.What is the difference between cash accounting and accrual accounting?
    -Cash accounting records transactions when money changes hands, while accrual accounting recognizes transactions when they are incurred, regardless of when the cash is exchanged.
''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''3.How do businesses determine their profitability?
    -Profitability is determined by subtracting total expenses from total revenue. The resulting figure is the net profit or loss. 
''',
                            110.0),
                        Text(""),
                        que(
                            context,
                            '''4.What is the role of a balance sheet in accounting?
   - A balance sheet displays a company's assets, liabilities, and equity at a specific point in time, providing an overview of its financial position.
''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''5.What are tax deductions for businesses?
    -Tax deductions are expenses that businesses can subtract from their taxable income, reducing the amount of income subject to taxation.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''6.How can businesses manage cash flow effectively?
   - Effective cash flow management involves monitoring income and expenses, negotiating favorable terms with suppliers, and maintaining a cash reserve for emergencies.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''7.What is the purpose of a business plan?
   - A business plan outlines a company's goals, strategies, and financial projections. It serves as a roadmap for the business and is often required for obtaining funding.
''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''8.What is depreciation in accounting?
   - Depreciation is the gradual decrease in the value of an asset over time, reflecting its use and wear. It is recorded as an expense on the income statement.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''9. How does inventory management impact a business?
   - Effective inventory management ensures a balance between having enough stock to meet demand and avoiding excess, which ties up capital and storage space.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''10. What is the purpose of an audit in accounting?
    - An audit examines a company's financial statements to ensure accuracy and compliance with accounting standards. It provides assurance to stakeholders.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''11. How do businesses determine product or service pricing?
    - Pricing strategies consider factors such as production costs, market demand, competition, and perceived value to set a price that maximizes profitability."''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''12. What is the difference between a sole proprietorship and a corporation?
    - A sole proprietorship is a business owned by one person, while a corporation is a separate legal entity with shareholders. Corporations offer limited liability protection.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''13. What are key performance indicators (KPIs) in business?
    - KPIs are measurable metrics that track the performance of specific business objectives. Examples include revenue growth, customer satisfaction, and employee productivity.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''14. How does business credit differ from personal credit?
    - Business credit is based on a company's financial history and payment behavior, separate from the owner's personal credit. It is crucial for obtaining financing.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''15. What is the purpose of a budget in business?
    - A budget outlines a company's financial goals and allocates resources to various activities. It helps control spending, plan for the future, and measure performance.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''16.How can businesses manage risk effectively?
    - Risk management involves identifying potential risks, assessing their impact, and implementing strategies to mitigate or respond to them.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''17.What is the importance of financial forecasting in business?
    - Financial forecasting projects future financial outcomes based on historical data and analysis. It aids in decision-making, budgeting, and strategic planning.''',
                            150.0),
                        Text(""),
                        que(
                            context,
                            '''18.How does globalization impact businesses?
    - Globalization opens up new markets but also increases competition. Businesses must adapt to diverse cultures.''',
                            150.0),
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
            child: Text('''(Business Systems)
How you choose business model, product, price, 
place. 
i) Incubation 
ii) Models 
iii) Market Approach
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
