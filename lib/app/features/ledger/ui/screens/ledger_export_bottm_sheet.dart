import 'dart:io';
import 'dart:typed_data';

import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:media_store_plus/media_store_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';

class LedgerExportBottomSheet extends StatelessWidget {
  final Uint8List pdfBytes;

  const LedgerExportBottomSheet({
    super.key,
    required this.pdfBytes,
  });

  Future<void> _savePdf(BuildContext context) async {
    try {
      await MediaStore.ensureInitialized();

      MediaStore.appFolder = "B2B";

      await MediaStore().saveFile(
        tempFilePath: await _createTempPdf(),
        dirType: DirType.download,
        dirName: DirName.download,
      );

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(context.l10n.pdfSavedSuccess),
          ),
        );
      }
    } catch (e) {
      debugPrint('Save PDF Error: $e');
    }
  }

  Future<String> _createTempPdf() async {
    final dir = await getTemporaryDirectory();

    final file = File(
      '${dir.path}/ledger_report.pdf',
    );

    await file.writeAsBytes(pdfBytes);

    return file.path;
  }

  Future<void> _previewPdf() async {
    await Printing.layoutPdf(
      onLayout: (_) async => pdfBytes,
    );
  }

  Future<void> _sharePdf() async {
    await Printing.sharePdf(
      bytes: pdfBytes,
      filename: 'ledger_report.pdf',
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SafeArea(
      child: Material(
        color: context.cs.surface,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.visibility_outlined),
                title: Text(l10n.preview),
                onTap: () async {
                  Navigator.pop(context);
                  await _previewPdf();
                },
              ),
              ListTile(
                leading: const Icon(Icons.download_outlined),
                title: Text(l10n.savePdf),
                onTap: () async {
                  Navigator.pop(context);
                  await _savePdf(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.share_outlined),
                title: Text(l10n.sharePdf),
                onTap: () async {
                  Navigator.pop(context);
                  await _sharePdf();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
