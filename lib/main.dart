import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:service_test/api.dart';
import 'package:service_test/person_response.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  PersonResponse? person;

  @override
  void initState() {
    callApi();
    super.initState();
  }

  void callApi() async {
    // This is the http client
    final Dio dio = Dio();

    // This is the api object, that performs calls on the client
    final MainApi api = MainApi(dio);

    // Execute an api call
    try {
      person = await api.getPerson(1);
    } on Exception catch (e) {
      print(e);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final PersonResponse? person = this.person;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: person != null ? Text(person.toString()) : Text('No data yet'),
        ),
      ),
    );
  }
}
