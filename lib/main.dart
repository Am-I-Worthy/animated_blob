import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Blob',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// ID Animated Blob - Filled with Gradient
        Positioned(
          top: -100.0,
          left: -100.0,
          child: Blob.animatedFromID(
            id: const ['7-4-66047', '7-4-32', '7-4-26', '7-4-587933', '7-4-57'],
            size: 300,
            loop: true,
            duration: const Duration(milliseconds: 2000),
            styles: BlobStyles(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFff5f6d),
                  Color(0xFFffc371),
                ],
              ).createShader(const Rect.fromLTRB(0, 0, 300, 300)),
            ),
          ),
        ),

        /// ID Animated Blob - only Stroke with Gradient
        Positioned(
          top: -150.0,
          left: -150.0,
          child: Blob.animatedFromID(
            styles: BlobStyles(
              fillType: BlobFillType.stroke,
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFff5f6d),
                  Color(0xFFffc371),
                ],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ).createShader(const Rect.fromLTRB(0, 0, 300, 300)),
            ),
            id: const ['7-4-66047', '7-4-32', '7-4-26', '7-4-587933', '7-4-57'],
            size: 400,
            loop: true,
            duration: const Duration(milliseconds: 2000),
          ),
        ),

        /// ID Animated Blob - only Stroke
        Positioned(
          top: -150.0,
          left: -150.0,
          child: Blob.animatedFromID(
            styles: BlobStyles(
              fillType: BlobFillType.stroke,
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFff5f6d),
                  Color(0xFFffc371),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(const Rect.fromLTRB(0, 0, 300, 300)),
            ),
            id: const ['7-4-66047', '7-4-32', '7-4-26', '7-4-587933', '7-4-57'],
            size: 400,
            loop: true,
            duration: const Duration(milliseconds: 2000),
          ),
        ),

        // Random Animated Blob - Filled
        Center(
          child: Blob.animatedRandom(
            styles: BlobStyles(
                fillType: BlobFillType.fill,
                gradient: LinearGradient(
                        colors: [Colors.red[200]!, Colors.blue[200]!])
                    .createShader(const Rect.fromLTRB(0, 0, 300, 300))),
            size: 400,
            edgesCount: 5,
            minGrowth: 1,
            loop: true,
            duration: const Duration(milliseconds: 2000),
          ),
        ),

        // Random Animated Blob - only Stroke
        Center(
          child: Blob.animatedRandom(
            styles: BlobStyles(
                color: Colors.blue[200], fillType: BlobFillType.stroke),
            size: 400,
            edgesCount: 5,
            minGrowth: 1,
            loop: true,
            duration: const Duration(milliseconds: 2000),
          ),
        ),
      ],
    );
  }
}
