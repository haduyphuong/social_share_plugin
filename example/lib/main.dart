import 'package:flutter/material.dart';
import 'package:social_share_plugin/social_share_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: InkWell(
              onTap: () {
                SocialSharePlugin.shareToFeedFacebookLink(
                    quote: 'Flutter dev', url: 'https://flutter.dev');
              },
              child: const Text('Share')),
        ),
      ),
    );
  }
}
