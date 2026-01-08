import 'package:flutter/material.dart';
import 'package:peak_sneakers/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('lib/images/puma-logo.png',
              height: 240,),
              ),

              const SizedBox(height: 48,),

              const Text('Forever Faster.',
              style:
              TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,)
              ),

              const SizedBox(height: 24,),

              const Text(
                "Brand new sneakers and custom kicks made with premium quality.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ), textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48,),

              GestureDetector(
                onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.only(
                    left: 64,
                    right: 64,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Text("Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                ),
              )
            ], 
          ),
        ),
      )
    );
  }
}