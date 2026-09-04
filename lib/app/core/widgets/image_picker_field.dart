import 'dart:typed_data';

import 'package:B2B/app/core/images/selected_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerField extends StatelessWidget {
  const ImagePickerField({
    super.key,
    required this.image,
    required this.onChanged,
    this.currentImageUrl,
    this.errorText,
    this.required = false,
  });

  final SelectedImage? image;
  final ValueChanged<SelectedImage?> onChanged;
  final String? currentImageUrl;
  final String? errorText;
  final bool required;

  Future<void> _pick(BuildContext context) async {
    final file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file == null || !context.mounted) return;
    final selected = await SelectedImage.fromXFile(file);
    if (!context.mounted) return;
    final validationError = selected.validate(required: required);
    if (validationError != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(validationError)),
      );
      return;
    }
    onChanged(selected);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(required ? 'Store image *' : 'Store image'),
        const SizedBox(height: 8),
        InkWell(
          onTap: () => _pick(context),
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: errorText == null
                    ? Theme.of(context).colorScheme.outline
                    : Theme.of(context).colorScheme.error,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip.antiAlias,
            child: image != null
                ? FutureBuilder<Uint8List>(
                    future: image!.file.readAsBytes(),
                    builder: (_, snapshot) => snapshot.hasData
                        ? Image.memory(snapshot.data!, fit: BoxFit.cover)
                        : const Center(child: CircularProgressIndicator()),
                  )
                : currentImageUrl != null && currentImageUrl!.isNotEmpty
                    ? Image.network(
                        currentImageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => const _PickPrompt(),
                      )
                    : const _PickPrompt(),
          ),
        ),
        if (image != null)
          Row(
            children: [
              Expanded(
                child: Text(image!.file.name, overflow: TextOverflow.ellipsis),
              ),
              TextButton(
                  onPressed: () => onChanged(null),
                  child: const Text('Remove')),
            ],
          ),
        if (errorText != null) ...[
          const SizedBox(height: 6),
          Text(errorText!,
              style: TextStyle(color: Theme.of(context).colorScheme.error)),
        ],
      ],
    );
  }
}

class _PickPrompt extends StatelessWidget {
  const _PickPrompt();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add_photo_alternate_outlined, size: 38),
        SizedBox(height: 8),
        Text('Choose image (JPG, PNG, or WebP; max 5 MB)'),
      ],
    );
  }
}
