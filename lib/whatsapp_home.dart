import 'package:flutter/material.dart';
import 'package:whats_app/colors.dart';
import 'package:whats_app/contacts.dart';

void choiceAction(choice) {
  // if (choice == Item.NewGroup) {
  //   print("New Group");
  // } else if (choice == Item.NewBroadcast) {
  //   print("New Broadcast");
  // } else if (choice == Item.Linkeddevices) {
  //   print("Linked devices");
  // } else if (choice == Item.Starredmessages) {
  //   print("Starred messages");
  // } else if (choice == Item.Settings) {
  //   print("Settings");
  // }
}

class Item {
  static const NewGroup = 'New Group';
  static const NewBroadcast = 'New Broadcast ';
  static const Linkeddevices = 'Linked devices';
  static const Starredmessages = 'Starred messages';
  static const Settings = 'Settings';
  static const List choices = [
    NewGroup,
    NewBroadcast,
    Linkeddevices,
    Starredmessages,
    Settings
  ];
}

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF202c36),
          title: const Text(
            'whatsapp',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.camera_alt_outlined, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.grey)),
            PopupMenuButton(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Item.choices.map((choice) {
                  return PopupMenuItem(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            tabs: [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: const Contacts(),
      ),
    );
  }
}
