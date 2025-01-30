import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home04.ui.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home03UI extends StatefulWidget {
  const Home03UI({super.key});

  @override
  State<Home03UI> createState() => _Home03UIState();
}

class _Home03UIState extends State<Home03UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "DTI APP สวัสดี",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
          ),
          IconButton(
            onPressed: () {
              //ตรวจสอบ Platform
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.red[400],
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home04UI(),
                  ),
                );
              },
              child: Text(
                'Go to Home04',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Southeast Asia University',
              ),
              accountEmail: Text(
                'www.sau.ac.th',
              ),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://geologie.com/cdn/shop/articles/jose_zuniga.jpg?crop=center&height=400&v=1611010376&width=810'),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/pic3.png',
                ),
                Icon(FontAwesomeIcons.facebook, color: Colors.blue),
              ],
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.home,
              ),
              trailing: Icon(
                Icons.numbers,
              ),
              title: Text(
                'หน้าหลัก',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              subtitle: Text(
                'Home',
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.heart_broken_sharp,
                color: Colors.red,
              ),
              title: Text('Favorite',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                  )),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.google,
                color: const Color.fromARGB(255, 33, 55, 199),
              ),
              title: Text(
                'Google กูเกิ้ล',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text(
                'Go to',
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.line,
                color: const Color.fromARGB(255, 10, 167, 39),
              ),
              title: Text(
                'Line ไลน์',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text(
                'Go to',
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/pic1.png',
                width: 30,
              ),
              title: Text(
                'องุ่นองุ่น',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text(
                'องุ่นอร่อยมาก',
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/pic1.png',
                width: 30,
              ),
              title: Text(
                'องุ่นองุ่น',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text(
                'องุ่นอร่อยมาก',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
