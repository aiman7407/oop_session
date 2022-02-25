import 'package:flutter/material.dart';


class SalahCard extends StatelessWidget {

  final String name;
  final String time;


  SalahCard(this.name, this.time);

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          textDirection: TextDirection.rtl,
          children: [
            Text(name,
              style: TextStyle(
                  fontSize: 30,color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(time,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                  fontWeight: FontWeight.bold
              )
              ,
            )
          ],
        ),
      ),
    );
  }
}
