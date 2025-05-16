import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_project/views/e01_page_ui.dart';
import 'package:flutter_speed_ui_project/views/e03_page_ui.dart';
import 'package:flutter_speed_ui_project/views/e04_page_ui.dart';

class E02PageUi extends StatefulWidget {
  const E02PageUi({super.key});

  @override
  State<E02PageUi> createState() => _E02PageUiState();
}

class _E02PageUiState extends State<E02PageUi> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/imge2.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 40,
                    left: 25,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => E01PageUi(),
                      ),
                    );
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Login to your account',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter email or phone',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                child: TextField(
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _obscurePassword =
                                !_obscurePassword; // toggle สถานะ
                          },
                        );
                      },
                      icon: Icon(
                        Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => E04PageUI(),
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 15, color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: GestureDetector(
                  onTap: () {
                    // Handle log in
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.orange[300]!,
                          Colors.orange[600]!,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.orange,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.orange,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Image.asset(
                      'assets/images/imge3.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/images/imge4.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/images/imge5.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?  ',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 14,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => E03PageUi(),
                        ),
                      );
                    },
                    child: Text(
                      ' Create Account',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
