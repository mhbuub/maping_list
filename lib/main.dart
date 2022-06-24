import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Mahbub",
      "Age": 20,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
      ]
    },
    {
      "Name": "Mahbub",
      "Age": 20,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
      ]
    },
    {
      "Name": "Athoilah",
      "Age": 20,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
      ]
    },
    {
      "Name": "Ahmad",
      "Age": 22,
      "favColor": [
        "Blue",
        "Red",
        "Green",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
      ]
    },
    {
      "Name": "Aurel",
      "Age": 25,
      "favColor": [
        "Blue",
        "Red",
        "Green",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
      ]
    },
    {
      "Name": "Amel",
      "Age": 19,
      "favColor": [
        "Blue",
        "Red",
        "Green",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
      ]
    },
    {
      "Name": "Amel",
      "Age": 19,
      "favColor": [
        "Blue",
        "Red",
        "Green",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
      ]
    },
    {
      "Name": "Amel",
      "Age": 19,
      "favColor": [
        "Blue",
        "Red",
        "Green",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
      ]
    },
    {
      "Name": "Amel",
      "Age": 19,
      "favColor": [
        "Blue",
        "Red",
        "Green",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
        "Black",
        "Red",
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map((data) {
            print(data["favColor"]);
            List myfavcolor = data["favColor"];
            return Card(
              margin: EdgeInsets.all(15),
              color: Colors.black.withOpacity(0),
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age: ${data['Age']}")
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myfavcolor.map((color) {
                          return Container(
                            color: Color.fromARGB(255, 72, 198, 165),
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
