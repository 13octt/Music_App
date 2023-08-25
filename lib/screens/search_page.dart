import 'package:flutter/material.dart';
import 'package:music_app/components/search_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light);
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Column(
          children: <Widget>[
            const Expanded(
              child: SearchMusicBar(),
            ),
            Expanded(child: ListView(children: const <Widget> [
              Card(
                child: ListTile(
                  title: Text('Card 1'),
                  subtitle: Text('Sub card 1'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Card 1'),
                  subtitle: Text('Sub card 1'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Card 1'),
                  subtitle: Text('Sub card 1'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Card 1'),
                  subtitle: Text('Sub card 1'),
                ),
              ),

            ],))
            
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}