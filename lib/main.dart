import 'package:basketball_po/cubit/counter_cubit.dart';
import 'package:basketball_po/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(PointsCounterApp());
}

class PointsCounterApp extends StatelessWidget {
  //void addOnePoint()
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
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
                          '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                          style: TextStyle(fontSize: 150),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 3);
                            },
                            child: Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
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
                          '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                          style: TextStyle(fontSize: 150),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 3);
                            },
                            child: Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
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
                     
                  },
                  child: Text(
                    'Rest',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )),
              const SizedBox(
                height: 16,
              ),
            ]),
          );
        },
        listener: (context, state) {});
  }
}
