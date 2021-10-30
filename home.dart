import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        leading: Icon(
          Icons.arrow_left_outlined,
          color: Colors.black,
          size: 50,
        ),
        actions: [
          Icon(
            Icons.bookmark_outline,
            size: 50,
            color: Colors.black,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 50,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Image.network(
                    "https://tse2.mm.bing.net/th?id=OIP.khiReyqXvSO9vmS_5QdD7gHaLG&pid=Api&P=0&w=111&h=166"),
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  "Deep shadows",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "Nick Sullivan",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Center(
                    child: Image.network(
                  "https://tse4.mm.bing.net/th?id=OIP.ZqMrgndxEWObPSD3olxhlgHaBZ&pid=Api&P=0&w=465&h=87",
                  height: 30,
                  width: 100,
                )),
                Center(
                  child: Text(
                    "4.5/5.0",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Text(
                  "Description:",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Center(
                  child: Text(
                    "Deep Shadow by Nick Sullivan is a sexy, espionage filled romp through the waters of the Caribbean and the islands upon it.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      createButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                          text: "Previews"),
                      createButton(
                          icon: Icon(
                            Icons.reviews,
                            color: Colors.black,
                          ),
                          text: "Reviews"),
                    ]),
                Padding(padding: EdgeInsets.all(10)),
                Center(
                  child: RaisedButton(
                      onPressed: () {},
                      color: Colors.purple[100],
                      child: Text(
                        "Buy Now In \$26.67",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget createButton({icon, color, text}) {
  return ButtonTheme(
      minWidth: 160,
      height: 45,
      child: FlatButton.icon(
          onPressed: () {},
          icon: icon,
          color: Colors.purple[100],
          label: Text(
            text,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )));
}
