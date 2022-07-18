import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:networking/catDetails.dart';
import 'package:networking/controller/catsData.dart';

class Networking extends StatefulWidget {
  const Networking({Key? key}) : super(key: key);

  @override
  State<Networking> createState() => _NetworkingState();
}

class _NetworkingState extends State<Networking> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calling Api")),
      body: FutureBuilder(
          future: CatsData().fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var _users = (snapshot.data as List<dynamic>);
              //handle data response
              // return UserListItem(_user);
              return ListView.builder(
                  itemCount: _users.length,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) {
                                return CatsDetails(_users[index]);
                              }),
                            ),
                          )
                        },
                        child: Card(
                            child: Row(
                          children: [
                            Image.network(
                              _users[index].picture,
                              width: 150,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  // Text(_users[index]['content']),
                                  Text(_users[index].title),
                                ],
                              ),
                            )
                          ],
                        )),
                      ));
            } else if (snapshot.hasError) {
              //handle error response
              return Container(
                child: Center(child: Text('has error')),
              );
            }

            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
