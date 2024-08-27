import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            "Points Counter",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "TEAM A",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "$teamA",
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(150, 50)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          setState(() {
                            teamA++;
                          });
                          print("One point added");
                        },
                        child: const Text("Add 1 Point")),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(150, 50)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          setState(() {
                            teamA += 2;
                          });
                          print("Two points added");
                        },
                        child: const Text("Add 2 Point")),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(150, 50)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          setState(() {
                            teamA += 3;
                          });
                          print("Three points added");
                        },
                        child: const Text("Add 3 Point")),
                  ],
                ),
                //////////
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 5,
                  ),
                ),
                /////////
                Column(
                  children: [
                    const Text(
                      "TEAM B",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "$teamB",
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(150, 50)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          setState(() {
                            teamB++;
                          });
                          print("One point added TeamB");
                        },
                        child: const Text("Add 1 Point")),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(150, 50)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          setState(() {
                            teamB += 2;
                          });
                          print("Two points added TeamB");
                        },
                        child: const Text("Add 2 Point")),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(150, 50)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          setState(() {
                            teamB += 3;
                          });
                          print("Three points added TeamB");
                        },
                        child: const Text("Add 3 Point")),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 110,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(150, 50)),
                    backgroundColor: MaterialStatePropertyAll(Colors.orange),
                    foregroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  setState(() {
                    teamA = 0;
                    teamB = 0;
                  });
                  print("Reset Done");
                },
                child: const Text("Reset")),
          ],
        ),
      ),
    );
  }
}
