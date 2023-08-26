import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Search and Card List'),
        ),
        body: Column(
          children: <Widget>[
            SearchBarWidget(),
            Expanded(
              child: CardListView(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}

class CardListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        CardView(title: 'Card 1', subtitle: 'Subtitle 1'),
        CardView(title: 'Card 2', subtitle: 'Subtitle 2'),
        CardView(title: 'Card 2', subtitle: 'Subtitle 2'),
        CardView(title: 'Card 2', subtitle: 'Subtitle 2'),
        CardView(title: 'Card 2', subtitle: 'Subtitle 2'),
        CardView(title: 'Card 2', subtitle: 'Subtitle 2'),
        CardView(title: 'Card 2', subtitle: 'Subtitle 2'),

        // ... Add more CardViews
      ],
    );
  }
}

class CardView extends StatelessWidget {
  final String title;
  final String subtitle;

  const CardView({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
