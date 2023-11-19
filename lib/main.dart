// import 'package:flutter/material.dart';

// void main() {
//   runApp(PointsCounterApp());
// }

// class PointsCounterApp extends StatefulWidget {
//   @override
//   State<PointsCounterApp> createState() => _PointsCounterAppState();
// }

// class _PointsCounterAppState extends State<PointsCounterApp> {
//   int teamApoints = 0;

//   int teamBpoints = 0;

//   //void addOnePoint()
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.orange,
//               title: Text("Points Counter"),
//             ),
//             body: Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('images/nb.png'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Column(children: [
//                 const SizedBox(height: 32),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       height: 500,
//                       child: Column(
//                         children: [
//                           const Text(
//                             'Team A',
//                             style: TextStyle(fontSize: 42),
//                           ),
//                           Text(
//                             '$teamApoints',
//                             style: TextStyle(fontSize: 150),
//                           ),
//                           ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   primary: Colors.orange,
//                                   minimumSize: Size(150, 50)),
//                               onPressed: () {
//                                 setState(() {
//                                   teamApoints++;
//                                 });
//                                 print(teamApoints);
//                               },
//                               child: Text(
//                                 'Add 1 Point',
//                                 style: TextStyle(
//                                     fontSize: 18, color: Colors.black),
//                               )),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                           ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   primary: Colors.orange,
//                                   minimumSize: Size(150, 50)),
//                               onPressed: () {
//                                 setState(() {
//                                   teamApoints = teamApoints + 2;
//                                 });
//                               },
//                               child: Text(
//                                 'Add 2 Point',
//                                 style: TextStyle(
//                                     fontSize: 18, color: Colors.black),
//                               )),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                           ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   primary: Colors.orange,
//                                   minimumSize: Size(150, 50)),
//                               onPressed: () {
//                                 setState(() {
//                                   teamApoints = teamApoints + 3;
//                                 });
//                               },
//                               child: Text(
//                                 'Add 3 Point',
//                                 style: TextStyle(
//                                     fontSize: 18, color: Colors.black),
//                               )),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 320,
//                       child: const VerticalDivider(
//                         color: Colors.orange,
//                         thickness: 1,
//                       ),
//                     ),
//                     Container(
//                       height: 500,
//                       child: Column(
//                         children: [
//                           const Text(
//                             'Team B',
//                             style: TextStyle(fontSize: 42),
//                           ),
//                           Text(
//                             '$teamBpoints',
//                             style: TextStyle(fontSize: 150),
//                           ),
//                           ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   primary: Colors.orange,
//                                   minimumSize: Size(150, 50)),
//                               onPressed: () {
//                                 setState(() {
//                                   teamBpoints++;
//                                 });
//                               },
//                               child: Text(
//                                 'Add 1 Point',
//                                 style: TextStyle(
//                                     fontSize: 18, color: Colors.black),
//                               )),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                           ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   primary: Colors.orange,
//                                   minimumSize: Size(150, 50)),
//                               onPressed: () {
//                                 setState(() {
//                                   teamBpoints = teamBpoints + 2;
//                                 });
//                               },
//                               child: Text(
//                                 'Add 2 Point',
//                                 style: TextStyle(
//                                     fontSize: 18, color: Colors.black),
//                               )),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                           ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   primary: Colors.orange,
//                                   minimumSize: Size(150, 50)),
//                               onPressed: () {
//                                 setState(() {
//                                   teamBpoints = teamBpoints + 3;
//                                 });
//                               },
//                               child: Text(
//                                 'Add 3 Point',
//                                 style: TextStyle(
//                                     fontSize: 18, color: Colors.black),
//                               )),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         primary: Colors.orange, minimumSize: Size(150, 50)),
//                     onPressed: () {
//                       setState(() {
//                         teamApoints = 0;
//                         teamBpoints = 0;
//                       });
//                     },
//                     child: Text(
//                       'Rest',
//                       style: TextStyle(fontSize: 18, color: Colors.black),
//                     )),
//                 const SizedBox(
//                   height: 16,
//                 ),
//               ]),
//             )));
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounterApp());
}

class PointsCounterApp extends StatefulWidget {
  @override
  State<PointsCounterApp> createState() => _PointsCounterAppState();
}

class _PointsCounterAppState extends State<PointsCounterApp> {
  int teamApoints = 0;

  int teamBpoints = 0;

  //void addOnePoint()
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("Points Counter"),
          ),
          body: Column(children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 42),
                      ),
                      Text(
                        '$teamApoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamApoints++;
                            });
                            print(teamApoints);
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamApoints = teamApoints + 2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamApoints = teamApoints + 3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 320,
                  child: const VerticalDivider(
                    color: Colors.orange,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 42),
                      ),
                      Text(
                        '$teamBpoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamBpoints++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamBpoints = teamBpoints + 2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamBpoints = teamBpoints + 3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, minimumSize: Size(150, 50)),
                onPressed: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
                child: Text(
                  'Rest',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
            const SizedBox(
              height: 16,
            ),
          ]),
        ));
  }
}
