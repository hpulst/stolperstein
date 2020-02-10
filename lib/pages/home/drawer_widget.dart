import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatelessWidget {
  final drawerHeader = UserAccountsDrawerHeader(
    accountName: Text('OSM Username'),
    accountEmail: Text('user.name@email.com'),
    currentAccountPicture: CircleAvatar(
      backgroundImage: AssetImage('images/avatar.png'),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          drawerHeader,
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.lightbulb_outline),
                  title: Text('Credits'),
                  onTap: () {
                    Navigator.pushNamed(context, '/credits');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.crop_square),
                  title: Text('About Stolpersteine'),
                  onTap: () async {
                    final url = 'http://www.stolpersteine.eu/en/';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Authorise OSM access'),
                onTap: () async {
                  final url = 'https://www.openstreetmap.org/login';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}