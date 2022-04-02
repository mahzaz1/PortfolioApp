import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter3/routes.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blue,
          body: Center(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("-Hire Me-",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Nunito",
                  color: Colors.white,
                  letterSpacing: 4
                ),),
                SizedBox(
                  height: 10,
                ),

                Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("03409086301",
                        style: TextStyle(
                            letterSpacing: 2
                        ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("malikahzaz301gmail.com")

                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("facebook/malik.ahzaz/")

                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_circle,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("instagram/malik.ahzaz30/")

                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // InkWell(
                //   onTap: (){
                //     Navigator.pushNamed(context, MyRoutes.portfolioRoutes );
                //   },
                //   child: Container(
                //     padding: EdgeInsets.symmetric(horizontal: 20),
                //     height: 35,
                //     width: 100,
                //     decoration: BoxDecoration(
                //         color: Colors.black,
                //         borderRadius: BorderRadius.circular(50)
                //     ),
                //     child: Row(
                //       children: const [
                //         Icon(
                //           Icons.arrow_back,
                //           color: Colors.white,
                //           size: 15,
                //         ),
                //         SizedBox(
                //           width: 10,
                //         ),
                //         Text("Back",
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 15
                //         ),)
                //
                //       ],
                //     ),
                //   ),
                // ),
                RaisedButton.icon(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),

                  onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.portfolioRoutes);
                  },
                  color: Colors.black,
                  label: Text("Back",
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  icon: Icon(Icons.arrow_forward,
                  color: Colors.white,
                  size: 15,) ,

                )
              ],
            ),

          ),


    );
  }
}
