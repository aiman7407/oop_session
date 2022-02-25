import 'package:flutter/material.dart';
import 'package:oop_session/components/salah_card.dart';
import 'package:oop_session/models/alsalah.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Stack(
           alignment: Alignment.bottomRight,
           children: [
             Image.asset('assets/background.jpg'),
             Text('اللهم صل وسلم على نبينا محمد',
             style: TextStyle(
               fontSize: 30
             ),
             )
           ],
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: todaySalah.map((e) {
                    return SalahCard(e.name, e.time);
                  }).toList(),
                ),
              ),
            ),
          )


        ],
      ),
    );
  }
}
