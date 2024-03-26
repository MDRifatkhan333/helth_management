import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HealthLogo extends StatelessWidget {
  const HealthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/hospital.svg',
      width: 100,
    );
  }
}
