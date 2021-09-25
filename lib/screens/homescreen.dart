import 'dart:io';
import 'package:farmers_e_market/screens/homepage.dart';
import 'package:farmers_e_market/screens/loginpage.dart';
import 'package:farmers_e_market/screens/profile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentIndex = 0; //for bottom navigation currebt value
  PageController _pageController =
      PageController(initialPage: 0); //pageview initial page
  // ignore: unused_field
  File _image;
  final picker = ImagePicker();
  Future getImagefromcamera() async {
    final pickedImage = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        return " No Image is selected";
      }
    });
  }

  Future getImagefromgallery() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        return " No Image is selected";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uzhavargal Santhai"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => Loginpage()));
              })
        ],
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Jesman"),
              accountEmail: Text("8778206024"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/profile.png"),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/drawerbg.jpg"),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              title: Text("My profile"),
              onTap: () {
                Profile();
              },
              leading: IconButton(
                icon: Icon(Icons.people),
                onPressed: () {
                  Profile();
                },
              ),
            ),
            ListTile(
              title: Text("Your Account"),
              leading: IconButton(
                icon: Icon(Icons.account_box),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text("My orders"),
              leading: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text("Change Password"),
              leading: IconButton(
                icon: Icon(Icons.lock),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text("Settings"),
              leading: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text("Terms and Conditions"),
              leading: IconButton(
                icon: Icon(Icons.book_outlined),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        marginEnd: 18,
        marginBottom: 20,
        icon: Icons.add,
        activeIcon: Icons.cancel,
        buttonSize: 56.0,
        visible: true,
        closeManually: false,
        renderOverlay: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.camera_enhance),
            backgroundColor: Colors.white,
            label: 'Camera',
            labelStyle: TextStyle(fontSize: 13.0),
            onTap: getImagefromcamera,
          ),
          SpeedDialChild(
            child: Icon(Icons.photo),
            backgroundColor: Colors.white,
            label: 'Gallery',
            labelStyle: TextStyle(fontSize: 13.0),
            onTap: getImagefromgallery,
          ),
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        allowImplicitScrolling: false,
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        children: <Widget>[
          Container(
            child: Homepage(),
          ),
          Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: new TextField(
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.black),
                          hintText: "Search",
                          prefix: Icon(Icons.search),
                          fillColor: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 130,
                  ),
                  Center(
                    child: Text("No data found"),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.camera_enhance,
                        size: 60,
                      ),
                      onPressed: () {
                        getImagefromcamera();
                      }),
                  SizedBox(
                    width: 80,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.photo,
                        size: 60,
                      ),
                      onPressed: () {
                        getImagefromgallery();
                      }),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Center(child: Text("No Orders yet")),
          ),
          Container(
            color: Colors.white,
            child: Profile(),
          )
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.green,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.shopping_cart, title: 'My order'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: _currentIndex,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
        },
      ),
    );
  }
}
