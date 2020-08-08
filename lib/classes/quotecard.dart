import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          color: Colors.green[600],
          elevation: 10,
          shadowColor: Colors.redAccent[700],
          margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(quote.author,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                    )),
                Icon(
                  Icons.format_quote,
                  size: 18,
                  color: Colors.purple[200],
                ),
                SizedBox(
                  height: 8.0,
                ),
                FlatButton.icon(
                  onPressed: delete,
                  label: Text("Delete Quote"),
                  icon: Icon(Icons.delete),
                )
              ],
            ),
          )),
    );
  }
}
