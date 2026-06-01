import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryFilter extends StatefulWidget {
  final List<String> categories;
  final ValueChanged<String>? onCategorySelected;
  final ValueChanged<String>? onSearchChanged;

  const CategoryFilter({
    Key? key,
    required this.categories,
    this.onCategorySelected,
    this.onSearchChanged,
  }) : super(key: key);

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  String _selected = 'all';
  String _search = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: (v) {
                  _search = v;
                  widget.onSearchChanged?.call(v);
                },
                decoration: InputDecoration(
                  hintText: 'Search products or suppliers...',
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: context.appColors.cardBackground,
                ),
              ),
            ),
            horizontalSpace(8),
            Container(
              width: 44.w,
              height: 44.h,
              decoration: BoxDecoration(
                color: context.appColors.cardBackground,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: context.appColors.borderColor),
              ),
              child: IconButton(
                icon: Icon(Icons.filter_list),
                onPressed: () {},
              ),
            ),
          ],
        ),
        verticalSpace(12),
        Container(
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            color: context.appColors.cardBackground,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: context.appColors.borderColor),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Filter by Category',
                      style: TextStyles.label(context).copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints.tight(Size(28.w, 28.h)),
                    icon: Icon(Icons.close, size: 18.sp),
                    onPressed: () {
                      setState(() {
                        _selected = 'all';
                        widget.onCategorySelected?.call(_selected);
                      });
                    },
                  ),
                ],
              ),
              verticalSpace(8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: widget.categories.map((cat) {
                    final selected = _selected == cat;
                    return Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() => _selected = cat);
                          widget.onCategorySelected?.call(cat);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            color: selected
                                ? context.cs.primary
                                : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(
                              color: selected
                                  ? context.cs.primary
                                  : Colors.transparent,
                            ),
                          ),
                          child: Text(
                            cat,
                            style: TextStyles.note(context).copyWith(
                              fontSize: 13.sp,
                              color: selected
                                  ? context.cs.onPrimary
                                  : Colors.grey.shade800,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
