import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Whatsapp'),
          backgroundColor: Colors.teal,
          bottom: const TabBar(tabs: [
            Icon(Icons.group),
            Text('Chats'),
            Text('Status'),
            Text('Calls'),
          ]),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),

            // for menu

            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (
                context,
              ) =>
                  const [
                PopupMenuItem(value: '1', child: Text('New Group')),
                PopupMenuItem(value: '2', child: Text('settings')),
                PopupMenuItem(value: '3', child: Text('Log Out')),
              ],
            ),
          ],
        ),
        body: TabBarView(children: [
          Text('Communities'),
          Text('Chats'),
          ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.pexels.com/photo/man-in-black-jacket-771742/'),
                ),
                title: Text('Syed Hamza Ali'),
                subtitle: Text('Hi there!'),
                trailing: Text('9.32 PM'),
              );
            },
          ),
          const Text('Status'),
          ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2)),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.pexels.com/photo/man-in-black-jacket-771742/'),
                  ),
                ),
                title: Text('Muhammad AQIB'),
                subtitle: Text('35m ago'),
                //   trailing: Text('4.13 PM'),
              );
            },
          ),
          const Text('Calls'),
          ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.pexels.com/photo/man-in-black-jacket-771742/'),
                ),
                title: Text('Arslan '),
                subtitle: Icon(Icons.phone),
                trailing: Text('1:45 PM'),
              );
            },
          ),
        ]),
      ),
    );
  }
}
