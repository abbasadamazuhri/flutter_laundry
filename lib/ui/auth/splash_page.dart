import 'package:flutter/material.dart';
import '../../core/core.dart';
import 'login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => context.pushReplacement(const LoginPage()),
    );
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.black, Colors.blue]),
          ),
          child: Column(
            children: [
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(50.0),
                child: Column(children: [
                  Text(
                    'LAUNDRY',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                    maxLines: 2,
                  ),
                  Text(
                    'Aplikasi Manajemen Berbasis POS',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: AppColors.white,
                    ),
                    maxLines: 2,
                  )
                ]),
              ),
              const Spacer(),
              Assets.images.logo.image(height: 70),
              const SpaceHeight(20.0),
            ],
          )),
    );
  }
}
