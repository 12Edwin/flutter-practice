// import 'package:flutter/material.dart';
//
// import 'content_column.dart';
//
// class Home extends StatefulWidget {
//
//   const Home({super.key});
//   @override
//   State<Home> createState() => _Home();
// }
//
// class _Home extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => print('Hola'),
//         backgroundColor: Colors.red,
//         foregroundColor: Colors.white,
//         child: const Icon(Icons.home),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       body: const Padding(padding: const EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               ContentColumn(title: 'titulo', description: 'description'),
//               ContentColumn(title: 'titulo2', description: 'description2'),
//               ContentColumn(title: 'titulo3', description: 'description3'),
//             ],
//           )
//       ),
//     );
//   }
// }
