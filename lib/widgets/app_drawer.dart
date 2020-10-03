import 'package:flutter/material.dart';
import '../screens/order_screen.dart';

class Appdrawer extends StatefulWidget {
  static const rountName = '/route';

  @override
  _AppdrawerState createState() => _AppdrawerState();
}

class _AppdrawerState extends State<Appdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Your Purchse'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Orders'),
            onTap: () {
              Navigator.of(context).pushNamed(OrdersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
