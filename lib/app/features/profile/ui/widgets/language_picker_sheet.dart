import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/locale/locale_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showLanguagePickerSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
    ),
    builder: (_) => ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.78,
      ),
      child: const LanguagePickerSheet(),
    ),
  );
}

class LanguagePickerSheet extends StatelessWidget {
  const LanguagePickerSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final current = context.watch<LocaleCubit>().state.languageCode;

    final languages = <(String code, String flag, String label)>[
      ('en', '🇬🇧', l10n.langEnglish),
      ('de', '🇩🇪', l10n.langGerman),
      ('es', '🇪🇸', l10n.langSpanish),
      ('fr', '🇫🇷', l10n.langFrench),
      ('nl', '🇳🇱', l10n.langDutch),
      ('pt', '🇵🇹', l10n.langPortuguese),
      ('ru', '🇷🇺', l10n.langRussian),
      ('tr', '🇹🇷', l10n.langTurkish),
    ];

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Container(
            width: 42.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: context.cs.outlineVariant,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 12.h),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                l10n.selectLanguage,
                style: TextStyle(
                  color: context.cs.primary,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Divider(height: 1, color: context.cs.outlineVariant),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 16.h),
              itemCount: languages.length,
              separatorBuilder: (_, __) => SizedBox(height: 4.h),
              itemBuilder: (context, index) {
                final entry = languages[index];
                final (code, flag, label) = entry;
                final selected = current == code;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  decoration: BoxDecoration(
                    color: selected ? context.cs.primary : Colors.transparent,
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: Material(
                    type: MaterialType.transparency,
                    borderRadius: BorderRadius.circular(14.r),
                    clipBehavior: Clip.antiAlias,
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      leading: Container(
                        width: 42.r,
                        height: 38.r,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: selected
                              ? context.cs.onPrimary.withValues(alpha: 0.16)
                              : context.cs.primary,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          flag,
                          style: TextStyle(
                            fontSize: 21.sp,
                            height: 1,
                          ),
                        ),
                      ),
                      title: Text(
                        label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: selected
                              ? context.cs.onPrimary
                              : context.cs.secondary,
                          fontSize: 16.sp,
                          fontWeight:
                              selected ? FontWeight.w800 : FontWeight.w600,
                        ),
                      ),
                      trailing: selected
                          ? Icon(
                              Icons.check_circle_rounded,
                              color: context.cs.onPrimary,
                            )
                          : Icon(
                              Icons.circle_outlined,
                              color:
                                  context.cs.secondary.withValues(alpha: 0.5),
                            ),
                      onTap: () {
                        context.read<LocaleCubit>().changeLocale(Locale(code));
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
