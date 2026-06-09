import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';

class CatalogEmptySection extends StatefulWidget {
  const CatalogEmptySection({super.key});

  @override
  State<CatalogEmptySection> createState() => _CatalogEmptySectionState();
}

class _CatalogEmptySectionState extends State<CatalogEmptySection> {
  bool _show = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          _show = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_show) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Icon(
            Icons.inventory_2_outlined,
            size: 60,
            color: Colors.grey,
          ),
          verticalSpace(10),
          Text(
            'No products in catalog',
            style: TextStyles.label(context).copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          verticalSpace(6),
          Text(
            'Add a product to get started',
            style: TextStyles.note(context).copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
