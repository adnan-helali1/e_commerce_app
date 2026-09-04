import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/locale/locale_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showLanguagePickerSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
    ),
    builder: (_) => const LanguagePickerSheet(),
  );
}

class LanguagePickerSheet extends StatelessWidget {
  const LanguagePickerSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final current = context.watch<LocaleCubit>().state.languageCode;

    final languages = <(String code, String label)>[
      ('en', l10n.langEnglish),
      ('de', l10n.langGerman),
      ('es', l10n.langSpanish),
      ('fr', l10n.langFrench),
      ('nl', l10n.langDutch),
      ('pt', l10n.langPortuguese),
      ('ru', l10n.langRussian),
      ('tr', l10n.langTurkish),
    ];

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Text(
                l10n.selectLanguage,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ...languages.map((entry) {
              final (code, label) = entry;
              final selected = current == code;
              return ListTile(
                title: Text(label),
                trailing: selected
                    ? Icon(Icons.check, color: context.cs.primary)
                    : null,
                onTap: () {
                  context.read<LocaleCubit>().changeLocale(Locale(code));
                  Navigator.of(context).pop();
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
