import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigating using Navigator.push() and pop() method',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
const HomePage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('HomePage'),
),
body: Center(

child: ElevatedButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => const DetailPage()),
);
},
child: const Text('Open Detail Page!'),
),
),
);
}
}

class DetailPage extends StatelessWidget {
const DetailPage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('DetailPage'),
),
body: Center(

child: ElevatedButton(
child: const Text('Go back to Home Page!'),
onPressed: () {
Navigator.pop(context);
},
),
),
);
}
}
