import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

import 'styles.dart';

void main() {
  final scaleData = ScaleData(
    mobile: DeviceSize(
      baseWidth: 375,
      baseHeight: 850,
    ),
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: scaleData.rootNavigatorKey,
      home: const MyApp(),
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
    ScaleData.update(context);

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
                  style: Styles.container,
                  children: [
                    CmView(
                      style: Styles.element,
                      children: const [
                        Text('text'),
                      ],
                    ),
                  ],
                ),
                CmView(
                  style: Styles.container,
                  children: [
                    CmView(
                      style: Styles.element,
                      children: const [
                        Text('text1'),
                      ],
                    ),
                    CmView(
                      style: Styles.element,
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
