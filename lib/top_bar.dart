import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        Container(
          height: 50,
          color: Colors.black87,
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: <Widget>[
              Text("MOTISHARE",
                  style: TextStyle(color: Colors.green, fontSize: 10)),
//    SizedBox(width: 20,),
              Container(
                  height: 25,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black38),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),

              SizedBox(
                width: 25,
              ),
              Container(
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 2, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.amberAccent,
                      ),
                      SizedBox(width: 5,),
                      Text(
                        "Kevin",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
//            height: 40,
                child: Container(
                  height: 25,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 70,
          top: 12,
          child: Container(
            height: 10,
            width: 10,
            decoration:
            BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          ),
        )
      ],
    );
  }
}
