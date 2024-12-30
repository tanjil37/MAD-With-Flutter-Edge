import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("This is AppBar"),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          );
        }),
        bottom: const TabBar(tabs: [
          Tab(
            icon: Icon(Icons.alarm),
          ),
          Tab(
            icon: Icon(Icons.alarm),
          ),
          Tab(
            icon: Icon(Icons.alarm),
          ),
        ]),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text("Main Menu"),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
               onTap: () => Navigator.pop(context),
            ),
             ListTile(
              leading: const Icon(Icons.login),
              title: const Text("LogIn"),
               onTap: () => Navigator.pop(context),
            ),
             ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("LogOut"),
               onTap: () => Navigator.pop(context),
            ),
             ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Profile"),
               onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: const TabBarView(children: [
        Text("Text 01"),
        Text("Text 02"),
        Text("Text 03"),
      ]),
    );
  }
}
