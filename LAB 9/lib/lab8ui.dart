import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:FrankShop_application/constants.dart';
import 'package:FrankShop_application/menu.dart';
import 'package:FrankShop_application/models/product.dart';
import 'package:FrankShop_application/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import './menu.dart';
import 'package:FrankShop_application/components/search_box.dart';

void main() {
  runApp(FrankBurger());
}

class FrankBurger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/FrankBurger": (context) => FrankBurger(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[300],
          centerTitle: true,
          title: Text(
            "Frank_SuperBurger",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.brown[800],
            ),
          ),
          elevation: 0,
          leading: IconButton(
            padding: EdgeInsets.only(left: kDefaultPadding),
            icon: SvgPicture.asset("assets/icons/back.svg"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: SvgPicture.asset("assets/icons/notification.svg"),
              onPressed: () {},
            ),
          ],
        ),
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
                color: Color.fromARGB(255, 113, 115, 119),
                child: new Column(
                  children: List.generate(1, (int index) {
                    return ListTile(
                      leading: Icon(Icons.account_box_outlined),
                      title: Text("FRANK CEO"),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
        body: Menu(),
        floatingActionButton: Container(
          width: 100,
          height: 56,
          child: RawMaterialButton(
            fillColor: Colors.amber[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 2,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '$foodQuantity',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ]),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
