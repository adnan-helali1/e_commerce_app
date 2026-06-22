import 'package:B2B/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class InventorySearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const InventorySearchBar({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.greenCard,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.blueCard),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: const TextStyle(fontSize: 14, color: AppColors.blueCardDark),
        decoration: const InputDecoration(
          hintText: 'Search inventory...',
          hintStyle: TextStyle(color: AppColors.blueCardDark, fontSize: 14),
          prefixIcon: Icon(Icons.search_rounded,
              color: AppColors.blueCardDark, size: 20),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}
