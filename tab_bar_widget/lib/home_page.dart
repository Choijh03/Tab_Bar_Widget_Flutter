import 'package:flutter/material.dart';
import 'package:tab_bar_widget/tabs/first_tab.dart';
import 'package:tab_bar_widget/tabs/second_tab.dart';
import 'package:tab_bar_widget/tabs/third_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //how many tabs you wat
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('TAB BAR'),
          ),
        ),
        body: Column(
          children: const [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepOrange,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepOrange,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepOrange,
                  ),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  //1st tab
                  FirstTab(),

                  //2nd tab
                  SecondTab(),

                  //3rd tab
                  ThirdTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
