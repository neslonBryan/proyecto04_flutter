import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Card Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 12.0,
                  offset: Offset(2, 4),
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  offset: Offset(-2, -4),
                  blurRadius: 12.0,
                ),
              ],
            ),
            child: Column(
              children: [
                const Text(
                  "Lorem ipsum dolor sit ametet dolore magna aliqua. Id ornare arcu odio ut sem nulla pharetra diam sit. Felis bibendum ut tristique et egestas quis ipsum. Amet risus nullam eget felis eget. Convallis tellus id interdum velit laoreet id donec. Venenatis lectus magna fringilla urna porttitor rhoncus dolor. Maecenas accumsan lacus vel facilisis volutpat est. Lacinia at quis risus sed vulputate odio ut enim blandit. In hac habitasse platea dictumst quisque sagittis purus sit amet. Nisl pretium fusce id velit ut tortor pretium.",
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  width: double.infinity,
                  height: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        blurRadius: 12.0,
                        offset: const Offset(4, 4),
                      )
                    ],
                  ),
                  child: const Text(
                    "follow me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
