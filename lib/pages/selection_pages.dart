import 'package:flutter/material.dart';

class SelectionPages extends StatefulWidget {
  const SelectionPages({super.key});

  @override
  State<SelectionPages> createState() => _SelectionPagesState();
}

class _SelectionPagesState extends State<SelectionPages> {
  DateTime ndatetime = DateTime.now();

  selectedDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2001),
      lastDate: DateTime(2030),
    ).then((value) {
      setState(() {
        ndatetime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Data Picker"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Fecha de nacimiento",
              ),
              onTap: () {
                selectedDate();
                Text(
                  "El dia es:${ndatetime.day.toString()}",
                );
              },
            ),
            Text(
              "El dia es:${ndatetime.day.toString()}",
              style: TextStyle(fontSize: 26),
            ),
            Text(
              "El mes es:${ndatetime.month.toString()}",
              style: TextStyle(fontSize: 26),
            ),
            Text(
              "El año es: ${ndatetime.year.toString()}",
              style: TextStyle(fontSize: 26),
            ),
          ],
        ),
      ),
    );
  }
}
