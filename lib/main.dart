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

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

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
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Text(
                    "10-day forecast",
                    style: TextStyle(color: Color.fromARGB(190, 255, 255, 255)),
                  )
                ],
              ),
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                GestureDetector(
                  onTap: () {
                    _showSnackBar(context, 'Today: 28°/9°');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Container(
                      height: 50,
                      color: Color.fromARGB(190, 8, 28, 52),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: 200,
                              child: Text("Today",
                                  style: TextStyle(
                                    color: Color.fromARGB(190, 255, 255, 255),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Icon(
                              Icons.sunny,
                              color: Colors.yellow,
                            ),
                          ),
                          Text(
                            "28°/9°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showSnackBar(context, 'Tuesday: 27°/9°');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                    child: Container(
                      height: 50,
                      color: Color.fromARGB(190, 8, 28, 52),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: 200,
                              child: Text("Tuesday",
                                  style: TextStyle(
                                    color: Color.fromARGB(190, 255, 255, 255),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Icon(
                              Icons.sunny,
                              color: Colors.yellow,
                            ),
                          ),
                          Text(
                            "27°/9°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showSnackBar(context, 'Wednesday: 26°/7°');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                    child: Container(
                      height: 50,
                      color: Color.fromARGB(190, 8, 28, 52),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: 200,
                              child: Text("Wednesday",
                                  style: TextStyle(
                                    color: Color.fromARGB(190, 255, 255, 255),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Icon(
                              Icons.cloudy_snowing,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "26°/7°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showSnackBar(context, 'Thursday: 28°/8°');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                    child: Container(
                      height: 50,
                      color: Color.fromARGB(190, 8, 28, 52),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: 200,
                              child: Text("Thursday",
                                  style: TextStyle(
                                    color: Color.fromARGB(190, 255, 255, 255),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Icon(
                              Icons.sunny,
                              color: Colors.yellow,
                            ),
                          ),
                          Text(
                            "28°/8°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showSnackBar(context, 'Friday: 28°/9°');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                    child: Container(
                      height: 50,
                      color: Color.fromARGB(190, 8, 28, 52),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: 200,
                              child: Text("Friday",
                                  style: TextStyle(
                                    color: Color.fromARGB(190, 255, 255, 255),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Icon(
                              Icons.sunny,
                              color: Colors.yellow,
                            ),
                          ),
                          Text(
                            "28°/9°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showSnackBar(context, 'Saturday: 29°/10°');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                    child: Container(
                      height: 50,
                      color: Color.fromARGB(190, 8, 28, 52),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: 200,
                              child: Text("Saturday",
                                  style: TextStyle(
                                    color: Color.fromARGB(190, 255, 255, 255),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Icon(
                              Icons.sunny,
                              color: Colors.yellow,
                            ),
                          ),
                          Text(
                            "29°/10°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showSnackBar(context, 'Sunday: 29°/12°');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                    child: Container(
                      height: 50,
                      color: Color.fromARGB(190, 8, 28, 52),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: 200,
                              child: Text("Sunday",
                                  style: TextStyle(
                                    color: Color.fromARGB(190, 255, 255, 255),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Icon(
                              Icons.sunny,
                              color: Colors.yellow,
                            ),
                          ),
                          Text(
                            "29°/12°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showSnackBar(context, 'Monday: 26°/12°');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                    child: Container(
                      height: 50,
                      color: Color.fromARGB(190, 8, 28, 52),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: 200,
                              child: Text("Monday",
                                  style: TextStyle(
                                    color: Color.fromARGB(190, 255, 255, 255),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Icon(
                              Icons.cloud,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "26°/12°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showSnackBar(context, 'Tuesday: 24°/11°');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                    child: Container(
                      height: 50,
                      color: Color.fromARGB(190, 8, 28, 52),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: 200,
                              child: Text("Tuesday",
                                  style: TextStyle(
                                    color: Color.fromARGB(190, 255, 255, 255),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Icon(
                              Icons.cloud,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "24°/11°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showSnackBar(context, 'Wendesday: 24°/9°');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                    child: Container(
                      height: 50,
                      color: Color.fromARGB(190, 8, 28, 52),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: 200,
                              child: Text("Wednesday",
                                  style: TextStyle(
                                    color: Color.fromARGB(190, 255, 255, 255),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Icon(
                              Icons.sunny_snowing,
                              color: Colors.yellow,
                            ),
                          ),
                          Text(
                            "24°/9°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
