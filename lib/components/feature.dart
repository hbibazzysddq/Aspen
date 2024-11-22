import 'package:flutter/material.dart';

class FeaturePage extends StatelessWidget {
  final IconData icon;
  final String label;
  const FeaturePage({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 77,
      height: 80,
      child: Column(
        children: [
          Icon(icon, size: 32, color: Colors.grey),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
