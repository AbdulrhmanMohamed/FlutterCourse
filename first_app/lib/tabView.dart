import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                color: Color(0xffBA6AFF),
              ),
              tabs: [
                Tab(
                  text: 'Signup',
                  icon: Icon(
                    Icons.person_add_alt_1_outlined,
                  ),
                ),
                Tab(
                  text: 'Signin',
                  icon: Icon(Icons.person_add_alt_1_sharp),
                )
              ]),
        ),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: Text(
                    "Show Case App",
                    style: TextStyle(color: Color(0xffBA6AFF), fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: "UserName",
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBA6AFF))),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBA6AFF))),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.account_circle_sharp,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBA6AFF))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: "Email",
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBA6AFF))),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBA6AFF))),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.account_circle_sharp,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBA6AFF))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: "Password",
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBA6AFF))),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBA6AFF))),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.account_circle_sharp,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBA6AFF))),
                  ),
                ),
                Align(
                  child: TextButton(
                    child: Container(
                        margin: EdgeInsets.only(top: 40),
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffBA6AFF),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          'SignuP',
                          style: TextStyle(color: Colors.white,fontSize: 22),
                        )),
                    onPressed: () => {},
                  ),
                  alignment: Alignment.center,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.only(top: 100),
            child: Column(children: [
             TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  hintText: "Email",
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffBA6AFF))),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffBA6AFF))),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.account_circle_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffBA6AFF))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  hintText: "Password",
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffBA6AFF))),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffBA6AFF))),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.account_circle_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffBA6AFF))),
                ),
              ),
              Align(
                child: TextButton(
                  child: Container(
                      margin: EdgeInsets.only(top: 40),
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffBA6AFF),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        'SignIn',
                        style: TextStyle(color: Colors.white,fontSize: 22),
                      )),
                  onPressed: () => {},
                ),
                alignment: Alignment.center,
              )

          ],))
        ]),
      ),
    );
  }
}
