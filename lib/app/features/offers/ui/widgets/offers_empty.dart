import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';

class OffersEmptySection extends StatefulWidget {
  const OffersEmptySection({super.key});

  @override
  State<OffersEmptySection> createState() => _OffersEmptySectionState();
}

class _OffersEmptySectionState extends State<OffersEmptySection> {
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
            Icons.search_off,
            size: 60,
            color: Colors.grey,
          ),
          verticalSpace(10),
          Text(
            'No results found',
            style: TextStyles.label(context).copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          verticalSpace(6),
          Text(
            'Try Again Later',
            style: TextStyles.note(context).copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
