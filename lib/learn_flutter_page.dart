import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  _LearnFlutterPageState createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        //Disable the go back button
        automaticallyImplyLeading: false,
        //Enable the go back button
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
                'images/land_rover_discovery_land_rover_auto_new_2014_92965_1280x720.jpg'),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: Center(
                child: Text(
                  'This is a Text Widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {},
              child: Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (() {
                debugPrint('This is a Row');
              }),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: true,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image.network(
                'data:image/jpeg;base64,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')
          ],
        ),
      ),
    );
  }
}
