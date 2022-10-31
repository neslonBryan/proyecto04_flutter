import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "como estas prro >:v",
            style: TextStyle(fontSize: 40),
          ),
          backgroundColor: Colors.white,
          content: Text(
            "eres una perra >:v",
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("salir"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("acepta"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("largate"),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("alert!!"),
            ),
          ],
        ),
      ),
    );
  }
}
