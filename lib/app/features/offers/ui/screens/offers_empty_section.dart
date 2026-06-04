import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';

class OffersEmptySection extends StatelessWidget {
  const OffersEmptySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Icon(
            Icons.search_off,
            size: 60,
            color: Colors.grey,
          ),
          verticalSpace(10),
          Text(
            'No results found',
            style: TextStyles.label(context),
          ),
          verticalSpace(6),
          Text(
            'Try different keywords',
            style: TextStyles.note(context),
          ),
        ],
      ),
    );
  }
}
