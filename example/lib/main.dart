import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

import 'styles.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CmText('Title'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: CmContainer(
              children: [
                CmView(
                  style: container,
                  children: [
                    CmView(
                      style: element,
                      children: const [
                        Text('text'),
                      ],
                    ),
                  ],
                ),
                CmView(
                  style: container,
                  children: [
                    CmView(
                      style: element,
                      children: const [
                        Text('text1'),
                      ],
                    ),
                    CmView(
                      style: element,
                      children: const [
                        Text('text2'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
