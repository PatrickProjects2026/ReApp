ASSISTANT
--------------

ACTIVITIES []
*Tasks 
*Meetings
*Routine

*Assets
*Liables



















import 'package:REGROUP/About.dart';


   Spacer(),

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