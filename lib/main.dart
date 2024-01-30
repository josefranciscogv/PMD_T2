import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 8, 52, 84),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 8.0),
              child: Row(
                children: [
                  Text(
                    "Hourly forecast",
                    style: TextStyle(color: Color.fromARGB(190, 255, 255, 255)),
                  )
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(190, 8, 28, 52),
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Text(
                              "16°",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.mode_night,
                            color: Color.fromARGB(190, 255, 255, 255),
                          ),
                          Text(
                            "Now",
                            style: TextStyle(
                                color: Color.fromARGB(190, 255, 255, 255)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Text(
                              "14°",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.mode_night,
                            color: Color.fromARGB(190, 255, 255, 255),
                          ),
                          Text(
                            "12AM",
                            style: TextStyle(
                                color: Color.fromARGB(190, 255, 255, 255)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Text(
                              "14°",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.mode_night,
                            color: Color.fromARGB(190, 255, 255, 255),
                          ),
                          Text(
                            "1AM",
                            style: TextStyle(
                                color: Color.fromARGB(190, 255, 255, 255)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Text(
                              "13°",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.mode_night,
                            color: Color.fromARGB(190, 255, 255, 255),
                          ),
                          Text(
                            "2AM",
                            style: TextStyle(
                                color: Color.fromARGB(190, 255, 255, 255)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Text(
                              "11°",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.mode_night,
                            color: Color.fromARGB(190, 255, 255, 255),
                          ),
                          Text(
                            "3AM",
                            style: TextStyle(
                                color: Color.fromARGB(190, 255, 255, 255)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Text(
                    "10-day forecast",
                    style: TextStyle(color: Color.fromARGB(190, 255, 255, 255)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
