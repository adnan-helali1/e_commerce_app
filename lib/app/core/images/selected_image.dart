import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class SelectedImage {
  static const int maxBytes = 5 * 1024 * 1024;
  static const Set<String> supportedExtensions = {
    'jpg',
    'jpeg',
    'png',
    'webp',
  };

  const SelectedImage({required this.file, required this.length});

  final XFile file;
  final int length;

  String get extension {
    final dot = file.name.lastIndexOf('.');
    return dot < 0 ? '' : file.name.substring(dot + 1).toLowerCase();
  }

  static Future<SelectedImage> fromXFile(XFile file) async {
    return SelectedImage(file: file, length: await file.length());
  }

  String? validate({required bool required}) {
    if (!supportedExtensions.contains(extension)) {
      return 'Choose a JPG, JPEG, PNG, or WebP image.';
    }
    if (length > maxBytes) {
      return 'The image must be 5 MB or smaller.';
    }
    return null;
  }

  Future<MultipartFile> toMultipartFile() async {
    return MultipartFile.fromBytes(
      await file.readAsBytes(),
      filename: file.name,
    );
  }
}
