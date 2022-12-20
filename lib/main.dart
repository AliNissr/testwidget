import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var name;
  bool trfa = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding: EdgeInsets.all(20),
                activeColor: Colors.green,
                selected: trfa,
                isThreeLine: false,
                  secondary: Icon(Icons.flutter_dash,
                      color: Colors.deepPurpleAccent, size: 50 , shadows: [Shadow(color: Colors.brown , blurRadius: 20)]),
                  subtitle: Text('AaLjfdkhregijfhevgrekhhgfiuvrehiugfrehfiuehvfihjreahvgfhirehiIi'),
                title: Text('sfdlkja'),
                  value: trfa, onChanged: (tr){
                setState(() {
                  trfa = tr!;
                });
              }),

              Checkbox(
                  activeColor: Colors.black,
                  checkColor: Colors.amber,
                  value: trfa, onChanged: (tr) {
                setState(() {
                  trfa = tr!;
                  print('$tr');
                });
              }),


              MaterialButton(
                onPressed: () {},
                color: Colors.amber,
                shape:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                child: const Text('ALiali'),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 100),
                      backgroundColor: Colors.deepPurple,
                      padding: EdgeInsets.symmetric(horizontal: 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 20,
                      textStyle: TextStyle(color: Colors.red, fontSize: 25)),
                  onPressed: () {},
                  child: Text("Ali")),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 100),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 20,
                    shadowColor: Colors.black,
                    textStyle: TextStyle(color: Colors.red, fontSize: 25)),
                onPressed: () {},
                icon: Icon(Icons.safety_check_outlined),
                label: Text('Click'),
              ),
              SizedBox(height: 20,),
              DropdownButton(
                focusColor: Colors.deepPurple,
                isExpanded: true,
                icon: Icon(Icons.chat_bubble_outline_outlined),
                iconEnabledColor: Colors.amber,
                /*style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    shadows: [Shadow(color: Colors.black , blurRadius: 20)]),*/
                hint: Container(
                    padding: EdgeInsets.only(right: 16),
                    width: double.infinity,
                    child: Text(
                      'اختر الاسم',
                      textDirection: TextDirection.rtl,
                    )),
                items: ['ali', 'nassr', 'hamed', 'karrar', 'salman']
                    .map((e) =>
                    DropdownMenuItem(
                      child: Text('$e'),
                      value: e,
                    ))
                    .toList(),
                onChanged: (data) {
                  setState(() {
                    name = data;
                  });
                },
                value: name,
              )
            ],
          ),
        ),
      ),
    );
  }
}
