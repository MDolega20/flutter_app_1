import 'package:flutter/material.dart';
import 'package:flutter_app_2/screens/page_add_data.dart';
import 'package:flutter_app_2/screens/start.dart';

class MainTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.add)),
                Tab(icon: Icon(Icons.history)),
                Tab(icon: Icon(Icons.equalizer)),
              ],
            ),
            title: Text('Fuel app'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.local_gas_station),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartPage()),
                  );
                },
              ),
//            menu()
            ],
          ),
          body: TabBarView(
            children: [
              PageAddData(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}