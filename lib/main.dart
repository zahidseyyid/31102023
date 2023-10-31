import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String date = DateTime.now().toString().substring(0, 10);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://pps.whatsapp.net/v/t61.24694-24/322446017_742002863987711_7295989210788674118_n.jpg?ccb=11-4&oh=01_AdRKc_RnEMXP85GrTvIGAArGrKKOF00UIT6kWPBfZHEBMQ&oe=654E5CDA&_nc_sid=000000&_nc_cat=100",
                ),
                radius: 85,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Seyyid Hamza Zahid",
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Tobeto - Mobil Geliştirme - 1B",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
