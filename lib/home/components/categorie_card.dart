import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String? label;
  final int? badgeCount;

  const CategoryItem({
    super.key,
    this.label,
    this.badgeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFD9E4E8), width: 1),
            borderRadius: BorderRadius.circular(8.0), 
          ),
          child: Text(
            label ?? "", 
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey.shade700,
                  fontSize: MediaQuery.of(context).size.width * 0.035, 
                ),
          ),
        ),
        
        if (badgeCount != null && badgeCount! > 0) 
          Positioned(
            top: -5,
            right: -5,
            child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFD9E4E8), width: 1),
              ),
              child: Text(
                badgeCount.toString(),
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white, 
                  fontSize: 10, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
