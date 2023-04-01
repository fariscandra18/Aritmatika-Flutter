import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController bilangan1 = TextEditingController();
  TextEditingController bilangan2 = TextEditingController();
  TextEditingController hasil = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Operator Aritmatika"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Wrap(
              runSpacing: 15,
              children: [
                Center(
                  child: Text("Kalkulator Sederhana"),
                ),
                TextField(
                  controller: bilangan1,
                  decoration: InputDecoration(
                    label: Text("Bilangan 1"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                TextField(
                  controller: bilangan2,
                  decoration: InputDecoration(
                    label: Text("Bilangan 2"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int bil1 = int.parse(bilangan1.text);
                            int bil2 = int.parse(bilangan2.text);
                            int hasilin = bil1 + bil2;

                            hasil.text = hasilin.toString();
                          });
                        },
                        child: Text("+"),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int bil1 = int.parse(bilangan1.text);
                            int bil2 = int.parse(bilangan2.text);
                            int hasilin = bil1 - bil2;

                            hasil.text = hasilin.toString();
                          });
                        },
                        child: Text("-"),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int bil1 = int.parse(bilangan1.text);
                            int bil2 = int.parse(bilangan2.text);
                            int hasilin = bil1 * bil2;

                            hasil.text = hasilin.toString();
                          });
                        },
                        child: Text("x"),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            double bil1 = double.parse(bilangan1.text);
                            double bil2 = double.parse(bilangan2.text);
                            double hasilin = bil1 / bil2;

                            hasil.text = hasilin.toString();
                          });
                        },
                        child: Text("/"),
                      ),
                    ),
                  ],
                ),
                TextField(
                  controller: hasil,
                  decoration: InputDecoration(
                    label: Text("Hasil"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
