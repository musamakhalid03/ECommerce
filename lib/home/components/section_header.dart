import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Heading extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Color? subtitleColor;

  const Heading({
    super.key,
    required this.title,
    this.subtitle,
    this.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Gap(8),
          Text(
            subtitle!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: subtitleColor ?? Colors.red,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
