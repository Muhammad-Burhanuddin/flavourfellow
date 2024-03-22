import 'package:flavour_fellow/utils/colors.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        title: const Text("How Can I Help You?",
            style: TextStyle(color: Colors.black, fontSize: 18)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text(
            "How can i help you?",
            style: TextStyle(
                fontSize: 20,
                color: AppColors.tertiary,
                fontWeight: FontWeight.bold),
          ),
          ExpansionTile(
            title: Text('Item '),
            children: <Widget>[
              ListTile(
                title: const Text('list item'),
              )
            ],
          ),
          ExpansionTile(
            title: Text('Item '),
            children: <Widget>[
              ListTile(
                title: const Text('list item'),
              )
            ],
          )
        ],
      ),
    );
  }
}
