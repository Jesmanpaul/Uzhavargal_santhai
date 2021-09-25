import 'package:carousel_pro/carousel_pro.dart';
import 'package:farmers_e_market/screens/payment.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/carrots.jpg'),
                    Image.asset('images/carrot2.jpg'),
                    Image.asset('images/carrot.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Dealer:Kumar",
                      style: TextStyle(fontSize: 25, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "250 Per Kg",
                      style: TextStyle(fontSize: 20, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Insctock || 10% Discount per purchase ",
                      style: TextStyle(fontSize: 13, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        child: Text("Purchase"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/cucumber.jpeg'),
                    Image.asset('images/cucumber1.jpeg'),
                    Image.asset('images/cucumber2.jpeg'),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Dealer:Jegan",
                      style: TextStyle(fontSize: 25, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "200Per kg",
                      style: TextStyle(fontSize: 20, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Insctock || 10% Discount per purchase ",
                      style: TextStyle(fontSize: 13, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        child: Text("Purchase"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/banana.jpg'),
                    Image.asset('images/banan1.jpeg'),
                    Image.asset('images/banana2.jpeg'),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Dealer:Dinesh",
                      style: TextStyle(fontSize: 25, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "350Rs per kg",
                      style: TextStyle(fontSize: 20, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Insctock || 10% Discount per purchase ",
                      style: TextStyle(fontSize: 13, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        child: Text("Purchase"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/drumstick.jpg'),
                    Image.asset('images/drumstick1.jpeg'),
                    Image.asset('images/drumstick2.jpeg'),
                  ],
                ),
              ),
              SizedBox(
                height: 0,
              ),
              SizedBox(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Dealer:Raju",
                      style: TextStyle(fontSize: 25, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "100Rs Per KG",
                      style: TextStyle(fontSize: 20, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Insctock || 10% Discount per purchase ",
                      style: TextStyle(fontSize: 13, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        child: Text("Purchase"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/cabbage.jpg'),
                    Image.asset('images/cabbage1.jpg'),
                    Image.asset('images/cabbage2.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Dealer:Navin",
                      style: TextStyle(fontSize: 25, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "150Rs Per Kg",
                      style: TextStyle(fontSize: 20, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Insctock || 10% Discount per purchase ",
                      style: TextStyle(fontSize: 13, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        child: Text("Purchase"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/onion.jpg'),
                    Image.asset('images/onion1.jpg'),
                    Image.asset('images/onion2.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Dealer:Balu",
                      style: TextStyle(fontSize: 25, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "300Rs Per Kg",
                      style: TextStyle(fontSize: 20, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Insctock || 10% Discount per purchase ",
                      style: TextStyle(fontSize: 13, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        child: Text("Purchase"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/nut.jpg'),
                    Image.asset('images/nut3.jpg'),
                    Image.asset('images/nut2.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Dealer:Amal",
                      style: TextStyle(fontSize: 25, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "120Rs Per Kg",
                      style: TextStyle(fontSize: 20, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Insctock || 10% Discount per purchase ",
                      style: TextStyle(fontSize: 13, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        child: Text("Purchase"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/potato.jpg'),
                    Image.asset('images/potato1.jpg'),
                    Image.asset('images/potato2.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Dealer:Arul",
                      style: TextStyle(fontSize: 25, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "150Rs Per Kg",
                      style: TextStyle(fontSize: 20, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Insctock || 10% Discount per purchase ",
                      style: TextStyle(fontSize: 13, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        child: Text("Purchase"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/tomato.jpg'),
                    Image.asset('images/tomato1.jpg'),
                    Image.asset('images/tomato2.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Dealer:Jack",
                      style: TextStyle(fontSize: 25, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "120Rs Per kg",
                      style: TextStyle(fontSize: 20, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Insctock || 10% Discount per purchase ",
                      style: TextStyle(fontSize: 13, color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        child: Text("Purchase"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
