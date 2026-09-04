import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfLedgerLabels {
  final String reportTitle;
  final String storeNameLine;
  final String generatedAtLine;
  final String summary;
  final String totalCreditsLine;
  final String totalDebitsLine;
  final String balanceLine;
  final String colDate;
  final String colOrder;
  final String colType;
  final String colAmount;
  final String colNotes;

  const PdfLedgerLabels({
    required this.reportTitle,
    required this.storeNameLine,
    required this.generatedAtLine,
    required this.summary,
    required this.totalCreditsLine,
    required this.totalDebitsLine,
    required this.balanceLine,
    required this.colDate,
    required this.colOrder,
    required this.colType,
    required this.colAmount,
    required this.colNotes,
  });
}

class PdfExportService {
  Future<Uint8List> generateLedgerReport({
    required double totalCredits,
    required double totalDebits,
    required double balance,
    required List<LedgerEntryPdfModel> entries,
    required PdfLedgerLabels labels,
  }) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.MultiPage(
        pageTheme: pw.PageTheme(
          pageFormat: PdfPageFormat.a4,
          margin: const pw.EdgeInsets.all(24),
        ),
        build: (context) {
          return [
            _buildHeader(labels),
            pw.SizedBox(height: 20),
            _buildSummary(labels),
            pw.SizedBox(height: 20),
            _buildTransactionsTable(entries, labels),
          ];
        },
      ),
    );

    return pdf.save();
  }

  pw.Widget _buildHeader(PdfLedgerLabels labels) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          labels.reportTitle,
          style: pw.TextStyle(
            fontSize: 22,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        pw.SizedBox(height: 8),
        pw.Text(labels.storeNameLine),
        pw.Text(labels.generatedAtLine),
      ],
    );
  }

  pw.Widget _buildSummary(PdfLedgerLabels labels) {
    return pw.Container(
      padding: const pw.EdgeInsets.all(12),
      decoration: pw.BoxDecoration(
        border: pw.Border.all(),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            labels.summary,
            style: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
              fontSize: 16,
            ),
          ),
          pw.SizedBox(height: 8),
          pw.Text(labels.totalCreditsLine),
          pw.Text(labels.totalDebitsLine),
          pw.Text(labels.balanceLine),
        ],
      ),
    );
  }

  pw.Widget _buildTransactionsTable(
    List<LedgerEntryPdfModel> entries,
    PdfLedgerLabels labels,
  ) {
    return pw.TableHelper.fromTextArray(
      headerStyle: pw.TextStyle(
        fontWeight: pw.FontWeight.bold,
      ),
      headers: [
        labels.colDate,
        labels.colOrder,
        labels.colType,
        labels.colAmount,
        labels.colNotes,
      ],
      data: entries.map((e) {
        return [
          e.date,
          '#${e.orderId}',
          e.type,
          e.amount,
          e.notes,
        ];
      }).toList(),
    );
  }
}

class LedgerEntryPdfModel {
  final String date;
  final int orderId;
  final String type;
  final String amount;
  final String notes;

  const LedgerEntryPdfModel({
    required this.date,
    required this.orderId,
    required this.type,
    required this.amount,
    required this.notes,
  });
}
