library circular_card;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CircularCard extends StatelessWidget {

  String image;
  final Color color;
  final double elevation;
  final double radius;
  final Widget child;

  CircularCard({
      this.child,
      this.radius = 50.0,
      this.color = Colors.white,
      this.elevation = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
      child: InkWell(
        onTap:  (){},
        child: Card(
          color: color,
          elevation: elevation,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
                child: Container(
                  height: 2*radius,
                  width: 2*radius,
                  child: Center(
                    child: child != null ? child : null,
                  ),
                  /*child: Card(
                    elevation: 15.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90.0),
                      child: Image.asset(
                        image,
                        height: MediaQuery.of(context).size.height*0.185,
                        width: MediaQuery.of(context).size.height*0.185,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),*/
                ),
          ),
        ),
      ),
    );
  }
}

