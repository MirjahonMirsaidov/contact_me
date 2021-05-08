import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/myimage.jpg'),
              ),
              Text(
                'Leo Messi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'RIGHT WINGER(GOAT)',
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 20,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              userData(icon: Icons.call, data: '+44 123 456 789'),
              userData(
                icon: Icons.email,
                data: 'leomessi10@gmail.com',
              ),
            ],
          ))),
    );
  }
}

class userData extends StatelessWidget {
  final IconData icon;
  final String data;
  const userData({
    Key key,
    this.icon,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          data,
          style: TextStyle(
            color: Colors.teal.shade900,
            fontSize: 20,
            fontFamily: 'SourceSansPro',
          ),
        ),
      ),
    );
  }
}
