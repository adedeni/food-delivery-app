import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/utils/app_layout.dart';


class BottomBarIcon extends StatelessWidget {
  final IconData icon;
  final int currentIndex;
  final int itemIndex;

  const BottomBarIcon({
    super.key,
    required this.icon,
    required this.currentIndex,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = currentIndex == itemIndex;
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(context, 12)),
      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : Colors.transparent,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 25)),
      ),
      child: Icon(
        icon,
        color: isSelected ? Colors.white : const Color(0xFF526480),
      ),
    );
  }
}
