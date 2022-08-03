import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class drawerpage extends StatefulWidget {
  const drawerpage({Key? key}) : super(key: key);

  @override
  State<drawerpage> createState() => _drawerpageState();
}

class _drawerpageState extends State<drawerpage> {
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Drawer( 
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color:Color.fromARGB(255, 152, 130, 130)
              ), 
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircleAvatar(backgroundImage: NetworkImage("https://i.pinimg.com/736x/c2/bf/74/c2bf74d9ef43bf24dcf73cde5a24f61c.jpg"),),
                      CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/photos/crescent-moon-high-quality-taken-through-telescope-picture-id510302794?k=20&m=510302794&s=612x612&w=0&h=eulCTFy02MReRhMf_ppEa4PpHG0iNJ4a6FEHbImL0xQ="),),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: const [
                          Text("OMS"), 
                          Text("+9925873551"),                                               
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          const ListTile(
            leading: Icon(Icons.group_add_outlined),
            title: Text("New group"),         
          ),
          const ListTile(
            leading: Icon(Icons.contact_page),
            title: Text("Contacts"),         
          ),
          const ListTile(
            leading: Icon(Icons.call_end),
            title: Text("Calls"),         
          ),
          const ListTile(
            leading: Icon(Icons.person_pin_circle_sharp),
            title: Text("People Nearby"),         
          ),
          const ListTile(
            leading: Icon(Icons.bookmark_border_outlined),
            title: Text("Saved Messages"),         
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),         
          ),
        ],
      ),
    );
  }
}