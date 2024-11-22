import 'package:belajar_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AspenPage extends StatelessWidget {
  const AspenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("image/pemandangan.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 93, left: 56, right: 56),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Aspen",
                    style: TextStyle(
                        fontSize: 116,
                        fontFamily: 'Hiatus',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        letterSpacing: 5),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 200,
                width: 300,
                // decoration: BoxDecoration(
                //   color: Colors.white,
                // ),
                margin: const EdgeInsets.only(left: 32, right: 43, bottom: 72),
                child: const SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Plan your",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        'Luxurious',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        'Vacation',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 52,
                width: 340,
                margin: const EdgeInsets.only(
                  bottom: 48,
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                      () => const HomePage(),
                      transition: Transition.rightToLeft,
                      duration: const Duration(seconds: 1),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade500,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Explore',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
