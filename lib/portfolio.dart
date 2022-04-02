import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter3/routes.dart';

import 'drawer.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        drawer:  MyDrawer(),
        appBar: AppBar(
            centerTitle: true,
            title: const Text("My Portfolio",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
              ),)
        ),
        backgroundColor: Colors.blue[400],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/pic.jpeg"),
                  radius: 100,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("-AHZAZ-",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Nunito",
                  letterSpacing: 7,
                  color: Colors.white
              ),),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 57,
              width: 300,
              child: ListView.builder(
                itemCount: 1,
                scrollDirection: Axis.vertical,
                itemBuilder: (context , index) => Column(
                  children: [

                    const Text("Web Developer",
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 4,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Flutter Developer",
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 4,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Graphics Designer",
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 4,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Wordpress developer",
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 4,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Web Developer",
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 4,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    const SizedBox(
                      height: 10,
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 120,vertical: 0),
              child: Divider(
                thickness: 3,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.contactRoutes);
              },

              child: Container(
                height: 40,
                width: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(1, 3),
                      )
                    ],
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hire Me",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                        )
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                      size: 16,
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ) ,
    );
  }
}
