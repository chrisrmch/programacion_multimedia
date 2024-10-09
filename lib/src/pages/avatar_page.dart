import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(6.5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.printler.com/cache/b/b/f/4/b/b/bbf4bb5664f43dc9e45943e0f9f173f67ef03cd6.jpg'),
              radius: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('AA'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://static.printler.com/cache/b/b/f/4/b/b/bbf4bb5664f43dc9e45943e0f9f173f67ef03cd6.jpg'),
          fadeInDuration: Duration(milliseconds: 2),
        ),
      ),
    );
  }
}
