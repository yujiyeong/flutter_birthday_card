import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/layout/model/from_person.dart';
import 'package:project/layout/model/to_person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const _BirthdayCardState(
        toPerson: ToPerson(toName: 'deoky', birthday: '2019년 09월 16일', age: 5),
        fromPerson: FromPerson(fromName: 'mommy'),

      ),
    );
  }
}

class _BirthdayCardState extends StatelessWidget {
  final ToPerson toPerson;
  final FromPerson fromPerson;

  const _BirthdayCardState({
    super.key,
    required this.toPerson,
    required this.fromPerson,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthday App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
          backgroundColor: Colors.pink,
          cardColor: Colors.pink,
          accentColor: Colors.pinkAccent,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '♡',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.yellow[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Happy\nBirthDay\n${toPerson.toName}!',
                style: const TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0, right: 60.0),
                  child: Text(
                    'from. mom',
                    style: TextStyle(
                      color: Colors.pinkAccent.shade100,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
