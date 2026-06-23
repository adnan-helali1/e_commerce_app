import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class FormFieldConfig {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;

  FormFieldConfig({
    required this.label,
    required this.controller,
    this.keyboardType = TextInputType.text,
  });
}

class GenericUpdateForm extends StatelessWidget {
  const GenericUpdateForm({
    super.key,
    required this.title,
    required this.fields,
    required this.onSubmit,
    required this.loading,
  });

  final String title;
  final List<FormFieldConfig> fields;
  final VoidCallback onSubmit;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: context.cs.background,
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: context.cs.primary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ...fields.map(
              (f) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextFormField(
                  controller: f.controller,
                  keyboardType: f.keyboardType,
                  decoration: InputDecoration(
                    labelText: f.label,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 180,
              height: 52,
              child: FilledButton(
                onPressed: loading ? null : onSubmit,
                child: loading
                    ? const CircularProgressIndicator()
                    : const Text("Save"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
