import 'dart:convert';

import 'package:api_example/models/quote%20model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Global variable for data
  DataModel? data;

  @override
  void initState() {
    super.initState();
    getQuotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data != null
          ? ListView.builder(
              itemCount: data!.quotes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text('${index + 1}'),
                  title: Text(data!.quotes[index].quote),
                  subtitle: Text(data!.quotes[index].author),
                );
              },
            )
          : Container(
              child: const Center(child: Text('No Data')),
            ),
    );
  }

  /*void getQuotes() async {
    var res = await http.get(Uri.parse("https://dummyjson.com/quotes"));
    //print(res);
    print("StatusCode:${res.statusCode},Response: ${res.body}");
  }

  void getQuotes() async {
    var res = await http.get(Uri.parse("https://dummyjson.com/quotes"));
    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      DataModel data = DataModel.fromJson(json);
      print('${data.total},${data.skip},${data.limit},${data.quotes.length}');
    }
  }   */
  void getQuotes() async {
    var res = await http.get(Uri.parse("https://dummyjson.com/quotes"));
    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      data = DataModel.fromJson(json);

      setState(() {});
    }
  }
}
