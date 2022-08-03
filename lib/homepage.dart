import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'drawerpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentindex=0;

  get index1 => null;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            _sheet(icon: Icons.search, text: "search", index: 0),
            _sheet(icon: Icons.add, text: "add", index: 1),
            _sheet(icon: Icons.home, text: "home", index: 2),
          ],
        ),
      ),
      drawer: const  drawerpage(),
      appBar: AppBar(actions: [_button()]),
    );
  }
  _button() {
    return PopupMenuButton(itemBuilder: (context) {
      return [
        const PopupMenuItem(
          child: Text("First"),
        ),
        const PopupMenuItem(
          child: Text("Second"),
        ),
        const PopupMenuItem(
          child: Text("Third"),
        ),
      ];
    }
  );
}
  _sheet({required IconData icon, required  text, required int index}) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        IconButton(onPressed: () {
          setState(() {
           currentindex = index; 
          }
        );         
      }, 
        icon: Icon(
          icon,
          color:currentindex==index?Colors.blue:Colors.black,
        ),
      ),
          Text(text.toString(),
          style: const TextStyle(color:Colors.black),
          ),
        ],
      ),
    );
  }
}
