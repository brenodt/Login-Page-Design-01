import 'package:flutter/material.dart';
import 'package:login_practice/global.dart';

const Color BACKGROUND = Color(0xFFF9F9F9); // Color(0xFFFAFAFA);

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  EdgeInsets _padding;

  @override
  Widget build(BuildContext context) {
    _padding = MediaQuery.of(context).padding;

    return Scaffold(
      backgroundColor: BACKGROUND,
      body: Padding(
        padding: EdgeInsets.only(
          top: _padding.top + 20,
          left: 40,
          right: 40,
          bottom: _padding.bottom + 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              size: 100,
            ),
            SizedBox(height: 10),
            Text(
              'login',
              style: LOGO,
            ),
            SizedBox(height: 50),
            CustomTextField(
              label: 'Username',
              icon: Icons.person,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              label: 'Password',
              icon: Icons.lock,
            ),
            SizedBox(
              height: 35,
            ),
            ButtonTheme(
              minWidth: double.infinity,
              height: 50,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    side: BorderSide(color: Colors.blue)),
                child: Text(
                  'SIGN IN',
                  style: BUTTON,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text('Don\'t have an account?', style: H4),
            FlatButton(
              onPressed: () {},
              child: Text(
                'SIGN UP NOW',
                style: FLAT_BUTTON,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Terms and Conditions',
              style: TERMS_CONDITIONS,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  CustomTextField({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: Colors.black38,
      borderRadius: BorderRadius.circular(100),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: label,
          hintStyle: TEXT_FIELD,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
