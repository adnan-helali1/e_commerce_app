import 'dart:io';
import 'dart:typed_data';

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
          const SnackBar(
            content: Text('PDF saved successfully'),
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.visibility_outlined),
              title: const Text('Preview'),
              onTap: () async {
                Navigator.pop(context);
                await _previewPdf();
              },
            ),
            ListTile(
              leading: const Icon(Icons.download_outlined),
              title: const Text('Save PDF'),
              onTap: () async {
                Navigator.pop(context);
                await _savePdf(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.share_outlined),
              title: const Text('Share PDF'),
              onTap: () async {
                Navigator.pop(context);
                await _sharePdf();
              },
            ),
          ],
        ),
      ),
    );
  }
}
