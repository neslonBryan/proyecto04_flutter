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
            "sin ideas?",
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
                  child: Text("a e a"),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  showMyAlert2(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInImage(
                  placeholder: AssetImage("assets/images/loading.gif"),
                  image: NetworkImage(
                    "https://images.pexels.com/photos/1926404/pexels-photo-1926404.jpeg",
                  ),
                  fit: BoxFit.cover,
                  fadeInDuration: Duration(milliseconds: 2500),
                ),
                SizedBox(
                  height: 20,
                ),
                Title(
                  color: Colors.black,
                  child: Text(
                    "Blog post published",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "tihs blog post has been published . Team members"
                  "will be able to edit this post and republish changes",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }

  showMyAlert3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInImage(
                placeholder: AssetImage("assets/images/loading.gif"),
                image: NetworkImage(
                    "https://i0.wp.com/news.qoo-app.com/en/wp-content/uploads/sites/3/2022/08/More-Than-a-Married-Couple-But-Not-Lovers-Anime-Reveals-1st-PV-Main-Cast-and-October-Debut_cover.jpeg"),
                fit: BoxFit.cover,
                fadeInDuration: Duration(milliseconds: 2500),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Your video has been uploaded"),
              Text("you're video has finished uploading end is live"),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {}, child: Text("Ingresa un correo")),
                  TextButton(
                    onPressed: () {},
                    child: Card(
                      child: Row(
                        children: [
                          Icon(Icons.share),
                          Text(
                            "Copy Link",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 6, 2, 243)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Card(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Next ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    color: Color.fromARGB(255, 87, 35, 146),
                  ),
                ],
              ),
            ],
          ),
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
              child: Text("primera alerta"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text("Segunda alerta"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert3(context);
              },
              child: Text("Tercera alerta"),
            ),
          ],
        ),
      ),
    );
  }
}
