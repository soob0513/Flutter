import 'package:flutter/material.dart';

class ExConexample extends StatelessWidget {
  const ExConexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(60, 25, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.call,
                            color: Colors.white,
                            size: 80,
                        ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 25, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.red[500],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 80,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(60, 25, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent[200],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.ac_unit,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 25, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.access_alarms_outlined,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(60, 25, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.account_box_outlined,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 25, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.purple[500],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.add_chart_outlined,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(60, 25, 0, 0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.account_balance_outlined,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 25, 0, 0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.ad_units_outlined,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(60, 25, 0, 0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.add_card_outlined,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 25, 0, 0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.teal[500],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.add_alert_outlined,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}