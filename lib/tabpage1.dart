 import 'package:flutter/material.dart';
import 'package:grid_task4_tabbar/model_grid.dart';

class Tabpage1 extends StatelessWidget {
  const Tabpage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List Griditems=[
      ModelGrid(col: Color(0xcf9AA960), img:"images/bicycle.png", tex: "Bicycle"),
      ModelGrid(col: Color(0xcf1AE122), img:"images/boat.png", tex: "Boat"),
      ModelGrid(col: Color(0xcffBF79DC), img:"images/front-of-bus.png", tex: "Bus"),
      ModelGrid(col: Color(0xcf094D0C), img:"images/train.png", tex: "Train"),
      ModelGrid(col: Color(0xcfE3E8C4), img:"images/walking.png", tex: "Walk"),
      ModelGrid(col: Color(0xcf82D6F3DD), img:"images/user.png", tex: "Contact"),
      ModelGrid(col: Color(0xcf45936DE7) ,img:"images/bicycle.png", tex: "Bicycle"),
      ModelGrid(col: Color(0xcfDAD9AC7B), img:"images/boat.png", tex: "Boat"),
      ModelGrid(col: Color(0xcfFDCBD6), img:"images/front-of-bus.png", tex: "Bus"),
      ModelGrid(col: Color(0xcfD279E577), img:"images/train.png", tex: "Train"),
      ModelGrid(col: Color(0xcf675EDE), img:"images/walking.png", tex: "Walk"),
      ModelGrid(col: Color(0xcf517485DB), img:"images/user.png", tex: "Contact"),
      ModelGrid(col: Color(0xcfEA8AB1), img:"images/bicycle.png", tex: "Bicycle"),
      ModelGrid(col: Color(0xcf1AE122), img:"images/boat.png", tex: "Boat"),

    ];
    
    return Scaffold(

    body: GridView.builder(itemCount: Griditems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 9/5,
        ),
        itemBuilder:(context,index){
      return Container(
        color: Griditems[index].col,
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage(Griditems[index].img),
                    fit: BoxFit.cover,
                  ),

                ),

              ),
              Text(Griditems[index].tex),


            ],
          ),
        ),
      );
        }
        ),
    );
  }
}
