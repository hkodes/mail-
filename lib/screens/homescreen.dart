import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/screen.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../widgets/widget.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mail+'),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('One Percent'),
            accountEmail: Text('onepercent.club'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: ExactAssetImage('assets/images/op.png'),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                child: Text('O'),
                backgroundColor: Colors.white60,
              ),
              CircleAvatar(
                child: Text('P'),
              ),
            ],
            onDetailsPressed: () {},
          ),
          ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.person),
            onLongPress: () {},
          ),
          Divider(),
          ListTile(
            title: Text('New Group'),
            leading: Icon(Icons.group_add),
          ),
          ListTile(
            title: Text('New Chat'),
            leading: Icon(Icons.chat),
            onLongPress: () {},
          ),
          ListTile(
            title: Text('Calls'),
            leading: Icon(Icons.call),
            onLongPress: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onLongPress: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Support'),
            leading: Icon(Icons.report_problem),
            onLongPress: () {},
          ),
          ListTile(
              title: Text('Close'),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              }),
        ]),
      ),
    );
  }
}
