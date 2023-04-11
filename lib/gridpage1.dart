 import 'package:flutter/material.dart';
import 'package:grid_task4_tabbar/tabpage1.dart';
import 'package:grid_task4_tabbar/tabpage2.dart';

class GridTab extends StatelessWidget {
  const GridTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(


      length: 3,
      child: Scaffold(

        appBar: AppBar
          (
          title: Text("Grid Demo"),

          bottom: TabBar(
            indicatorColor: Colors.red,




              tabs:[
              Tab(text: ("Gridview.count"),),
                Tab(text: ("Gridview.builder"),),
                Tab(text: ("Gridview.separated"),),

],

          ),
        ),
        body: TabBarView(
            children:[
              Tabpage1(),
              Tabpage2(),

            ],
        ),


      ),
    );

  }
}
