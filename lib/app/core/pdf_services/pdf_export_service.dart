import 'dart:typed_data';

import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfExportService {
  Future<Uint8List> generateLedgerReport({
    required String storeName,
    required double totalCredits,
    required double totalDebits,
    required double balance,
    required List<LedgerEntryPdfModel> entries,
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
            _buildHeader(
              storeName: storeName,
            ),
            pw.SizedBox(height: 20),
            _buildSummary(
              totalCredits: totalCredits,
              totalDebits: totalDebits,
              balance: balance,
            ),
            pw.SizedBox(height: 20),
            _buildTransactionsTable(entries),
          ];
        },
      ),
    );

    return pdf.save();
  }

  pw.Widget _buildHeader({
    required String storeName,
  }) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'STORE LEDGER REPORT',
          style: pw.TextStyle(
            fontSize: 22,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        pw.SizedBox(height: 8),
        pw.Text('Store Name: $storeName'),
        pw.Text(
          'Generated At: ${DateFormat('dd/MM/yyyy HH:mm').format(DateTime.now())}',
        ),
      ],
    );
  }

  pw.Widget _buildSummary({
    required double totalCredits,
    required double totalDebits,
    required double balance,
  }) {
    return pw.Container(
      padding: const pw.EdgeInsets.all(12),
      decoration: pw.BoxDecoration(
        border: pw.Border.all(),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            'SUMMARY',
            style: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
              fontSize: 16,
            ),
          ),
          pw.SizedBox(height: 8),
          pw.Text('Total Credits : \$${totalCredits.toStringAsFixed(2)}'),
          pw.Text('Total Debits : \$${totalDebits.toStringAsFixed(2)}'),
          pw.Text('Balance : \$${balance.toStringAsFixed(2)}'),
        ],
      ),
    );
  }

  pw.Widget _buildTransactionsTable(
    List<LedgerEntryPdfModel> entries,
  ) {
    return pw.TableHelper.fromTextArray(
      headerStyle: pw.TextStyle(
        fontWeight: pw.FontWeight.bold,
      ),
      headers: const [
        'Date',
        'Order',
        'Type',
        'Amount',
        'Notes',
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
