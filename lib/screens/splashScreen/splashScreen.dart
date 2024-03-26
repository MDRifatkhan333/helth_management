import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helth_management/screens/splashScreen/widget/healthManagementLogo.dart';
import 'package:helth_management/widgets/DashboardTiles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  Future<void> goToNextScreen() async {
    //await AuthController.getAccessToken();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.offAll(
        () => const DashboardTiles(
          username: 'E-CARE',
          userId: '1',
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: HealthLogo(),
          ),
          Spacer(),
          CircularProgressIndicator(),
          SizedBox(
            height: 16,
          ),
          Text('Version 1.0.0'),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
