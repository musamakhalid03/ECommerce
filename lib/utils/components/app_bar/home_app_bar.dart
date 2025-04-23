import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, this.drawerTap, this.serachTap});
  final drawerTap;
  final serachTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        homeAppBarContainer(image: "assets/images/svg/dawer.svg"),
        // SvgPicture.asset("assets/images/svg/Logo.svg"),
        homeAppBarContainer(image: "assets/images/svg/serech.svg"),
      ],
    );
  }
}

Widget homeAppBarContainer({
  String? image,
}) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: const BoxDecoration(
      color: Color(0xFFF0F6F8),
    ),
    child: SvgPicture.asset(image!),
  );
}
