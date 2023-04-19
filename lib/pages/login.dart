import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mishtu/pages/newPages.dart';
import 'package:mishtu/theme/custom_app_bar.dart';
import 'package:mishtu/theme/theme.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: Colors.transparent,
        height: 50.0,
        title: 'Login',
      ),
      body: Center(
        child: Container(
          decoration: myBackground,
          child: Column(
            children: [
              SizedBox(height: 49),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: myTextStyle.backgroundColor,
                  borderRadius: BorderRadius.circular(48),
                ),
                child: Text(
                  "Sign In",
                  style: myTextStyle,
                ),
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: TextField(
                        controller: _usernameController,
                        decoration:
                            loginBoxInputDecoration.copyWith(hintText: 'Email'),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      controller: _passwordController,
                      decoration: loginBoxInputDecoration.copyWith(
                        suffixIcon: Icon(
                          FontAwesomeIcons.key,
                          color: Colors.grey,
                        ),
                        hintText: 'Password',
                      ),
                      obscureText: true,
                      obscuringCharacter: '❌',
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    style: customButtonStyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => newPages()),
                      );
                    },
                    child: Text('Practice'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
