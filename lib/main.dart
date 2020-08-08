import 'package:flutter/material.dart';
import 'classes/quote.dart';
import "./classes/quotecard.dart";

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: "me", text: "Be yourself"),
    Quote(author: "you", text: "Be myself"),
    Quote(author: "unknown", text: "Hello World")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Awesome Quotes"),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
