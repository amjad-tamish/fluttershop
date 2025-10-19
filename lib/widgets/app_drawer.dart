import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // --- Drawer header ---
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=12'),
            ),
            accountName: const Text(
              'Hello, Tamish!',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text('tamish@gmail.com'),
          ),

          // --- Drawer menu items ---
          ListTile(
            leading: const Icon(Icons.home, color: Colors.teal),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // close drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart, color: Colors.teal),
            title: const Text('My Cart'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite, color: Colors.teal),
            title: const Text('Favorites'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.teal),
            title: const Text('Profile'),
            onTap: () {},
          ),

          const Spacer(),

          // --- Logout item ---
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
