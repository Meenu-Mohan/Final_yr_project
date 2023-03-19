import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'https://banner2.cleanpng.com/20171202/b4a/success-png-image-5a229eaff3dc00.4133076515122182879989.jpg',
              width: 80.0,
              height: 80.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Match found',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
