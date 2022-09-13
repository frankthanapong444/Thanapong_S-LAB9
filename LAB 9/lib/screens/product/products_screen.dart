import 'package:FrankShop_application/lab8ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:FrankShop_application/constants.dart';

import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Frank_SuperShop',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 0, 53, 80),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/notification.svg"),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: kPrimaryColor,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: DrawerHeader(
                  child: Image.network(
                      'https://scontent.fbkk22-2.fna.fbcdn.net/v/t39.30808-6/305203001_3309856552669534_787644023267309023_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG7PoePgYzftjy_dcwMT8O_KGHyD1nx7kIoYfIPWfHuQodJR_6bZt-jGkQk3m_U4zw8myIMhx5Ym8fBCc7ve3kN&_nc_ohc=hJaBxCZhZ6EAX_ZB5cL&tn=u2ZOvTkRUBgGChga&_nc_zt=23&_nc_ht=scontent.fbkk22-2.fna&oh=00_AT_rAslzzl8IHZ_eE1aikjrSAhcVNdqT-hDXLHxmvdWQIg&oe=632487EA')),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            Container(
              color: Color.fromARGB(255, 255, 138, 4),
              child: new Column(
                children: List.generate(1, (int index) {
                  return ListTile(
                    leading: Icon(Icons.account_box_outlined),
                    title: Text("FRANK CEO"),
                  );
                }),
              ),
            ),
            ListTile(
                title: Text("FrankSuperShop"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProductsScreen()));
                }),
            ListTile(
                title: Text("FrankSuperBuger"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => FrankBurger()));
                }),
          ],
        ),
      ),
      body: Body(),
    );
  }
}
