import 'package:flutter_web/material.dart';
import '../packages/flutter_signin_button/flutter_signin_button.dart';
import '../packages/font_awesome_flutter/font_awesome_flutter.dart';

// import '../core/util.dart';

Widget _rememberPassword() {
  return Container(
    height: 22,
    //color: Colors.blueAccent,
    margin: EdgeInsets.only(top: 20),
    child: GestureDetector(
      onTap: () {
        print('Forgot password');
      },
      child: Text(
        'Don\'t remember your password?',
        style: TextStyle(
            fontFamily: 'GothamRounded',
            fontSize: 10,
            fontWeight: FontWeight.w300,
            color: Colors.black54),
      ),
    ),
  );
}

Widget _loginSignupButton() {
  return Container(
    height: 30,
    color: Color(0xFFFFA200),
    child: MaterialButton(
      onPressed: () {
        print('SIGN/LOGIN');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'LOG IN',
            style: TextStyle(
                fontFamily: 'GothamRounded',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.white,
            size: 18,
          ),
        ],
      ),
    ),
  );
}

class Home extends StatefulWidget {
  static const routeName = '/home';

  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _controller;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("assets/images/phone-black.png"),
              fit: BoxFit.none,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 205,
                height: 376,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 40,
                      // color: Color.fromRGBO(248, 249, 250, 0),
                      color: Colors.black12,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            'assets/images/Interestinate-logo.png',
                            width: 25,
                            height: 22,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Premium content',
                            style: TextStyle(fontFamily: 'Kalam'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      child: TabBar(
                        controller: _controller,
                        indicatorColor: Colors.black38,
                        labelColor: Colors.black54,
                        unselectedLabelColor: Colors.black38,
                        labelStyle: TextStyle(
                            fontSize: 10, fontFamily: 'GothamRounded'),
                        tabs: [
                          Tab(
                            text: 'Log in',
                          ),
                          Tab(
                            text: 'Sign up',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
      // Use the FontAwesomeIcons class for the IconData
      icon: Icon(FontAwesomeIcons.ad), 
      onPressed: () { print("Pressed"); }
     ),
                          IconButton(
                            icon: Icon(Icons.gamepad),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.gamepad),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.gamepad),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 10,
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'or',
                        style: TextStyle(
                            fontFamily: 'GothamRounded',
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black54),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 238,
                      child: TabBarView(
                        controller: _controller,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('2'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                width: 180,
                                height: 35,
                                child: TextFormField(
                                  controller: _emailController,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 10),
                                  cursorColor: Colors.black54,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.mail,
                                        size: 15,
                                        color: Colors.black54,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black12,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black54,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      hintText: "yours@example.com",
                                      hintStyle: TextStyle(fontSize: 10),
                                      contentPadding: EdgeInsets.only(top: 5)),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 180,
                                height: 35,
                                child: TextFormField(
                                  controller: _passwordController,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 10),
                                  cursorColor: Colors.black54,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.lock_outline,
                                        size: 15,
                                        color: Colors.black54,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black12,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black54,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      hintText: "your password",
                                      hintStyle: TextStyle(fontSize: 10),
                                      contentPadding: EdgeInsets.only(top: 5)),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 180,
                                // height: 35,
                                child: TextFormField(
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 10),
                                  cursorColor: Colors.black54,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black54,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: "Enter your first name",
                                    hintStyle: TextStyle(fontSize: 11),
                                    hintMaxLines: 1,
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 180,
                                // height: 35,
                                child: TextFormField(
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 10),
                                  cursorColor: Colors.black54,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black54,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: "Enter your last name",
                                    hintStyle: TextStyle(fontSize: 11),
                                    hintMaxLines: 1,
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              _rememberPassword(),
                              _loginSignupButton()
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
