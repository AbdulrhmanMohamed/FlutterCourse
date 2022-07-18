import 'package:flutter/material.dart';

class CatsDetails extends StatelessWidget {
  final cat;
  CatsDetails(this.cat) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CAts Details",
        ),
      ),
      body: Center(child: Container(padding: EdgeInsets.all(20),child:Column(children: [
          Text(cat.title),
          Text(cat.content),
          Image.network(cat.picture)
      ]) ,)),
    );
  }
}
