import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Input Pages"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Nombre Completo",
                label: Text("Nombre Completo"),
                icon: Icon(Icons.check_box_rounded),
                suffixIcon: Icon(Icons.location_city_outlined),
                prefixIcon: Icon(Icons.abc),
                hintStyle: TextStyle(color: Colors.black),
              ),
              style: TextStyle(
                color: Colors.red,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar productos",
                prefixIcon: Icon(Icons.search_off),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
              ),
              onChanged: (String value) {
                print(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    offset: Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto....",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Container(
                    margin: EdgeInsets.only(right: 8, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(
                      width: 0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
