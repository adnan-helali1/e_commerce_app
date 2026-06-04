import 'dart:ui';

import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/widgets/app_bottom_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBottomNavItem {
  final String label;
  final IconData icon;

  const AppBottomNavItem({
    required this.label,
    required this.icon,
  });
}

class AppBottomNavBar extends StatelessWidget {
  final List<AppBottomNavItem> items;

  const AppBottomNavBar({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      buildWhen: (p, c) => p.index != c.index,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                  color: context.cs.surface,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(items.length, (index) {
                    final isSelected = state.index == index;

                    return GestureDetector(
                      onTap: () {
                        context.read<BottomNavCubit>().changeIndex(index);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 10),
                        curve: Curves.easeInOut,
                        padding: EdgeInsets.symmetric(
                          horizontal: isSelected ? 12 : 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? context.cs.primary
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            AnimatedScale(
                              scale: isSelected ? 1.1 : 1,
                              duration: const Duration(milliseconds: 250),
                              child: Icon(
                                items[index].icon,
                                key: ValueKey(isSelected),
                                color: isSelected
                                    ? context.cs.surface
                                    : context.cs.primary,
                              ),
                            ),
                            if (isSelected) ...[
                              const SizedBox(width: 8),
                              Text(
                                items[index].label,
                                style: TextStyle(
                                  color: context.cs.surface,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
