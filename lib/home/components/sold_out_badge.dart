import 'package:flutter/material.dart';

class SoldOutBadge extends StatelessWidget {
  const SoldOutBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.amber.withOpacity(0.4),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: const Text(
        "sold out",
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 12.0,
        ),
      ),
    );
  }
}