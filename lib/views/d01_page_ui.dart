import 'package:flutter/material.dart';

class D01PageUI extends StatefulWidget {
  const D01PageUI({super.key});

  @override
  State<D01PageUI> createState() => _D01PageUIState();
}

class _D01PageUIState extends State<D01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image (เต็มหน้าจอ)
          Positioned.fill(
            child: Image.asset(
              'assets/images/imgd1.png', // ใส่ path ของรูปที่คุณต้องการที่นี่
              fit: BoxFit.cover,
            ),
          ),

          // Overlay with content
          Positioned.fill(
            child: Container(
              color: Colors.white
                  .withOpacity(0), // ปรับความทึบแสงให้เห็นพื้นหลังบางส่วน
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Logoผ_
                  Image.asset(
                    'assets/images/imgd2.png',
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  // Login Button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        minimumSize: const Size.fromHeight(
                          60,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Register Button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black),
                        minimumSize: const Size.fromHeight(
                          60,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Register",
                          style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      )),
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // Continue as Guest
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Continue as a guest",
                      style: TextStyle(
                        color: Colors.cyan,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
