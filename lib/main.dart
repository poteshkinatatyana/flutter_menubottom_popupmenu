// import 'package:convex_app_bar_example/convex_button_demo.dart';
// import 'package:convex_app_bar_example/custom_appbar_sample.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_menu_bottom_navigation/pages/one.dart';
import 'package:flutter_menu_bottom_navigation/pages/three.dart';
import 'package:flutter_menu_bottom_navigation/pages/two.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'default_appbar_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (_) => HelloConvexAppBar(),
        "/bar": (BuildContext context) => FirstPage(),
        "/custom": (BuildContext context) => SecondPage(),
        "/fab": (BuildContext context) => ThirdPage(),
      },
    );
  }
}

class HelloConvexAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello ConvexAppBar'),
        actions: [
          PopupMenuButton(
              position: PopupMenuPosition.under,
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Search")
                        ],
                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.upload,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Upload")
                        ],
                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.copy,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Copy")
                        ],
                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Exit")
                        ],
                      ),
                      value: 1,
                    ),
                  ])
        ],
      ),
      body: Column(
        children: [
          Center(
              child: TextButton(
            child: Text('Click to show full example'),
            onPressed: () => Navigator.of(context).pushNamed('/bar'),
          )),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        activeColor: Color.fromRGBO(48, 187, 240, 1),
        color: Color.fromRGBO(122, 143, 166, 1),
        backgroundColor: Colors.white,
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.search),
          TabItem(icon: Icons.comment),
          // TabItem(icon: Icons.book_outlined),
          TabItem<Image>(
            icon: Image.asset('assets/icon-1.png'),
            activeIcon: Image.asset('assets/icon-2.png'),
          ),
          TabItem(icon: Icons.bookmark),
          TabItem(icon: Icons.people),
        ],
        initialActiveIndex: 3,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
