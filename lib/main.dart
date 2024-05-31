import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoint = 0;

  int teamBPoints = 0;

  void addOnePoint() {
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('pointer Counter'),
        ),
        body: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamAPoint',
                      style: const TextStyle(fontSize: 140),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(8),
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(fontSize: 140),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAPoint = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
