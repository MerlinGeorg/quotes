import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({super.key});

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;

  List quotes = [
    "Life is stupid",
    "Zeroes are heroes",
    "You are the best barista you can get because you only knows your taste"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Container(
            width: 350,
            height: 200,
            margin: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(14.5)
            ),
            
            child: Center(child: Text(quotes[_index % quotes.length],
            style: TextStyle(
              color: Colors.grey,
              fontStyle: FontStyle.italic
            )
            ))) ,

            Divider(thickness: 1.3),

            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: TextButton.icon(
                onPressed: _showQuote,
                icon: Icon(Icons.wb_sunny),
                label: Text("Inspire me",
                style: TextStyle(fontSize: 18.8)
                ),
                style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent.shade700,
              foregroundColor: Colors.white,
              
                )
                
              ),
            )
          ]
        )
        ,)
    );
  }


  void _showQuote(){
    setState((){
 _index += 1;
    }
       
      );
   
  }

}