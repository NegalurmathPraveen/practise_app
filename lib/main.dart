import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> dropDownItems=['Kannada','Hindi'];
  var versionNumber=1.0;
  var dropdownValue='hey';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('FRUITS',textAlign: TextAlign.start,),
      actions: [
        Row(
          children: <Widget>[
            DropdownButton(
                hint: Text('Kannda'),
                value: dropDownItems[0],
              iconEnabledColor:Colors.white,
                items:dropDownItems.map<DropdownMenuItem<String>>((index)=>
                    DropdownMenuItem<String>(
                        alignment:Alignment.center,
                      //onTap:(){},
                      child:Text(index),
                      value: index,
                    ),
                ).toList()
            ),
           SizedBox(width: 20,),
           Text(versionNumber.toString()),
          ],
        ),
      ],
      ),
      drawer:Drawer(child:Text('wow')),
      body: Center(
        child:Column(
          children: [
            DropdownButton(

                hint: Text('Kannda'),
                value: dropDownItems[0],
                iconEnabledColor:Colors.white,
                items:dropDownItems.map<DropdownMenuItem<String>>((String index)=>
                    DropdownMenuItem<String>(
                      alignment:Alignment.center,
                      //onTap:(){},
                      value: index,
                      child:Text(index),
                    ),
                ).toList()
            ),
      DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
          ],
        ),
      ),
    );
  }
}
