import 'package:farmers_e_market/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/widgets.dart';

class Loginpage extends StatelessWidget {
  final _phoneController = TextEditingController();
  final _passController = TextEditingController();
  final _mailController = TextEditingController();
  final _namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Backgroundimage(),
        Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70.0),
              child: AppBar(
                title: Text(
                  'Farmers E-market',
                  style: TextStyle(fontSize: 25),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                centerTitle: true,
              ),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(32),
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(color: Colors.white)),
                      controller: _namecontroller,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyle(color: Colors.white)),
                      controller: _phoneController,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Mail ID",
                          hintStyle: TextStyle(color: Colors.white)),
                      controller: _mailController,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white)),
                      controller: _passController,
                    ),
                    SizedBox(height: 16),
                    Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text('login'),
                          onPressed: () {
                            if (_passController.text == "123456789") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Homescreen()));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Loginpage()));
                            }
                          },
                        ))
                  ],
                )),
              ),
            )),
      ],
    );
  }
}
