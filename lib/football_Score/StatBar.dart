import 'package:flutter/material.dart';

class StatBar extends StatelessWidget {
  final String label;
  final double value; // percentage (0–100)

  const StatBar({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label + Value side by side
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "${value.toStringAsFixed(1)}%", //  shows numeric value
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ],
        ),
        SizedBox(height: 6),

        // Bar with proportional fill
        Container(
          height: 12,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(6),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: value / 100, // ✅ fills based on value
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
