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
            decoration: const BoxDecoration(color: Colors.teal),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=12'),
            ),
            accountName: const Text(
              'Hello, Tamish!',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text('tamish@gmail.com'),
          ),

          // // --- Custom Drawer header ---
          // Container(
          //   color: Colors.teal,
          //   padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          //   child: Row(
          //     children: [
          //       const CircleAvatar(
          //         radius: 30,
          //         backgroundImage: NetworkImage(
          //           'https://i.pravatar.cc/150?img=12',
          //         ),
          //       ),
          //       const SizedBox(width: 16),
          //       Expanded(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           // Vertically center
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           // Align text next to avatar
          //           children: const [
          //             Text(
          //               'Hello, Tamish!',
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 18,
          //                 color: Colors.white,
          //               ),
          //             ),
          //             SizedBox(height: 4),
          //             Text(
          //               'tamish@gmail.com',
          //               style: TextStyle(color: Colors.white70),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

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
            title: const Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
