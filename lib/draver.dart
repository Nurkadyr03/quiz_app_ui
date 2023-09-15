import 'package:flutter/material.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            //decoration: BoxDecoration(color:Colors.black26),
            child: UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color:Colors.black38),
              accountName: const Text('Asanov Usen'),
              accountEmail: const Text('Usen@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                child: Image.asset('assets/twitterr.png',),
              ),
              currentAccountPictureSize: const Size.square(48),
            ),
          ),
          const ListTile(
            title: Text('Question applications'),
            subtitle: Text(
              'There is 8 question',
              style: TextStyle(color: Colors.green),
            ),
          ),
          const AboutListTile(
            icon: Icon(Icons.android),
            child: Text('android app'),
            applicationIcon: Icon(
              Icons.account_balance_sharp,
              color: Colors.green,
            ),
            applicationName: 'Quiz App',
            applicationVersion: 'version app',
          ),
          ListTile(
            leading:const Icon(Icons.arrow_back),
            title: const Text('Exit'),
            onTap:() {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
