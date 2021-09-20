import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:gflix/widgets/trending.dart';
import 'package:gflix/utilities/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        brightness:  Brightness.dark,
        primarySwatch: Colors.blue,
        ),
      home: const MyHomePage(title: 'GFlix'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List trendingmovies = [];
  final String apikey = '58872d641e47bcf01e8b47c75e020623';
  final readaccesstoken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1ODg3MmQ2NDFlNDdiY2YwMWU4YjQ3Yzc1ZTAyMDYyMyIsInN1YiI6IjYxM2U3ZTVjOTE3NDViMDA5MWU3OGI5NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.q-bvvinn7hwRIRHRRQtfgQRWsbhITyfALcho9Y8zhJk';

  loadmovies()async {
    TMDB tmdbWithCustomLogs = TMDB(Apikeys(apikey, readaccesstoken),
    logConfig: ConfigLogger(
      showLogs: true,
      showErrorLogs: true
    ));

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
