import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(MaterialApp(home: Project2(),));
}
var  index1 =0;
class Project2 extends StatefulWidget {
  const Project2({Key? key}) : super(key: key);

  @override
  _Project2State createState() => _Project2State();
}

class _Project2State extends State<Project2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: index1,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          index1 = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.event),
            title: Text('Events'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.highlight),
            title: Text('Highlights'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('한국어'),
          ),
        ],
      ),
        body: Center(
          child: ElevatedButton(
            child: Text('test'),
            onPressed: (){
              CoolAlert.show(
                context: context,
                type: CoolAlertType.success,
                text: "Your transaction was successful!",
              );
            },
          ),
        ),
    );
  }
}
