import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter3/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            // topRight: Radius.circular(50),
            bottomRight: Radius.circular(50)),
      ),
      backgroundColor: Colors.blue[600],
      child: ListView(
        children:  [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: UserAccountsDrawerHeader(

                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/pic.jpeg"),
                ),
                accountName: Text("Malik Ahzaz"),
                accountEmail: Text("malikahzaz@gamil.com"),

                decoration: BoxDecoration(
                    color: Colors.blue
                ),
                margin: EdgeInsets.zero,
              )),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.portfolioRoutes);
            },
            leading: Icon(Icons.home,
            color: Colors.white,),
            title: Text("Home",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,

            ),),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.contactRoutes);
            },
            leading: const Icon(CupertinoIcons.profile_circled,
              color: Colors.white,),
            title: const Text("Hire Me",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,

              ),),
          )
        ],
      ),
    );
  }
}
