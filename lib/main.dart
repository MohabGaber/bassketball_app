// ignore: unused_import

import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBallApp());
}

class BasketBallApp extends StatefulWidget {
  const BasketBallApp({super.key});

  @override
  State<BasketBallApp> createState() => _BasketBallAppState();
}

class _BasketBallAppState extends State<BasketBallApp> {
  int TeamApoints = 0;

  int TeamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("BasektBallApp"),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        "$TeamApoints",
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            TeamApoints++;
                            setState(() {});
                            print(TeamApoints);
                          },
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            TeamApoints = TeamApoints + 2;
                            setState(() {});
                            print(TeamApoints);
                          },
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            TeamApoints = TeamApoints + 3;
                            setState(() {});
                            print(TeamApoints);
                          },
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        "$TeamBpoints",
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            TeamBpoints = TeamBpoints + 1;
                            setState(() {});
                            print(TeamBpoints);
                          },
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            TeamBpoints = TeamBpoints + 2;
                            setState(() {});
                            print(TeamApoints);
                          },
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            TeamBpoints = TeamBpoints + 3;
                            setState(() {});
                            print(TeamBpoints);
                          },
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50)),
                  onPressed: () {
                    TeamApoints = 0;
                    TeamBpoints = 0;
                    setState(() {});
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            ],
          )),
    );
  }
}
