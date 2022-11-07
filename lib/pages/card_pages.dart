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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            child: Row(
              children: [
                Image.asset(
                  "assets/images/imagen1.png",
                  height: 120.0,
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        "Fiorela Guadalupe de las Flores Azules",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
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
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 7,
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/paisaje.jpeg",
                    height: 110,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
