import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/stock/ui/screens/full_stock_screen.dart';
import 'package:flutter/material.dart';

class FilterTabRow extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const FilterTabRow({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < tabs.length; i++) ...[
          FilterTab(
            label: tabs[i],
            isSelected: i == selectedIndex,
            onTap: () => onTabSelected(i),
          ),
          if (i < tabs.length - 1) const SizedBox(width: 8),
        ],
      ],
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// WIDGET — FilterTab
// ══════════════════════════════════════════════════════════════════════════════
///
/// A single pill-style tab. Selected state uses a dark navy fill.
///
class FilterTab extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterTab({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFF1A2B8C)
              : context.cs.onPrimaryContainer,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected
                ? const Color(0xFF1A2B8C)
                : context.cs.onPrimaryContainer,
          ),
        ),
        child: Text(
          label,
          style: TextStyles.label(context).copyWith(
            color: isSelected ? Colors.white : context.cs.onSurfaceVariant,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
