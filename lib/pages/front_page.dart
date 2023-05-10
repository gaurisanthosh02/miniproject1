
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects/pages/login_page.dart';
import '../common/theme_helper.dart';
import 'profile_page.dart';
import 'license_details.dart';
import 'vehicle_details.dart';


class FrontPage extends StatelessWidget {

  final double _drawerIconSize = 24;
  final double _drawerFontSize = 17;

  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      appBar: AppBar(elevation: 0.0, backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "DOC-MO",
          style: TextStyle(
              fontSize: 23),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          decoration:BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1.0],
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.2),
                    Theme.of(context).accentColor.withOpacity(0.5),
                  ]
              )
          ) ,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: const [0.0, 1.0],
                    colors: [ Theme.of(context).primaryColor, Theme.of(context).accentColor,
                    ],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text("Welcome",
                    style: TextStyle(fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                    Icons.home, size: _drawerIconSize, color: Theme.of(context).accentColor),
                title: Text('Home',
                  style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FrontPage()));
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(Icons.person_outlined, size: _drawerIconSize, color: Theme.of(context).accentColor,),
                title: Text(
                  'My Profile', style: TextStyle(fontSize: 17, color: Theme.of(context).accentColor),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(
                    Icons.newspaper_outlined, size: _drawerIconSize, color: Theme.of(context).accentColor),
                title: Text('My Transactions',
                  style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(Icons.edit_document, size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text('Driver Details',
                  style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).accentColor),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DriverDetails()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(Icons.car_crash_outlined, size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text('Vehicle Details',
                  style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).accentColor),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleDetails()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(
                  Icons.support_agent_rounded, size: _drawerIconSize, color: Theme.of(context).accentColor,),
                title: Text('Help And Support',
                  style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).accentColor),),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordPage()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(
                  Icons.help, size: _drawerIconSize, color: Theme.of(context).accentColor,),
                title: Text('About Us',
                  style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).accentColor),),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordVerificationPage()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(
                  Icons.logout_rounded, size: _drawerIconSize, color: Theme.of(context).accentColor,),
                title: Text('Logout',
                  style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).accentColor),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()),);
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              //margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(
                horizontal: 90,
                vertical: 50,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1.0],
                  colors: [ Theme.of(context).primaryColor, Theme.of(context).accentColor,
                  ],
                ),
              ),
              child: const Text.rich(
                TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: "Hello\n",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "Welcome!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(60),
              ),
              margin: const EdgeInsets.only(top: 70,bottom: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 8,
              ),
              child: ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                child: const Text('Vehicle Details', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                onPressed: (){
                  //After successful login we will redirect to profile page. Let's create profile page now
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const VehicleDetails()));
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(60),
              ),
              margin: const EdgeInsets.only(top: 40,bottom: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 55,
                vertical: 8,
              ),
              child: ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                child: const Text('Driver Details', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                onPressed: (){
                  //After successful login we will redirect to profile page. Let's create profile page now
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DriverDetails()));
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(60),
              ),
              margin: const EdgeInsets.only(top: 40,bottom: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 57,
                vertical: 8,
              ),
              child: ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                child: const Text('Fine Payment', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                onPressed: (){
                  //After successful login we will redirect to profile page. Let's create profile page now
                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const VehicleDetails()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}// Scaffold
