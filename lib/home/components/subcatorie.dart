import 'dart:ui';

import 'package:flutter/material.dart';

class SubCategoryItem extends StatelessWidget {
  final String? picture;
  final int? badgeCount;
  final String? label;

  const SubCategoryItem({
    super.key,
    this.picture,
    this.badgeCount,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFFD9E4E8), width: 2),
        ),
        child: Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(picture!),
            ),
            Positioned(
              top: 1,
              right: -1,
              child: Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFD9E4E8), width: 2),
                ),
                child: const Text(
                  "2",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF98A6AB),
                    fontSize: 9,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Text(
        label! ?? "",
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey.shade700,
            ),
      ),
    ]);
  }
}
