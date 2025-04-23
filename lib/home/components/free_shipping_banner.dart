import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class FreeShippingBanner extends StatelessWidget {
  const FreeShippingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFF17A2B8),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image.asset(
                "assets/images/png/rider.png",
              )),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Free Shipping Over \$0",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Gap(4),
                Text(
                  "Free returns and exchange",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white70,
                      ),
                ),
              ],
            ),
          ),
          const Gap(16),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              'assets/images/svg/phone.svg',
              width: 16.0,
              height: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
