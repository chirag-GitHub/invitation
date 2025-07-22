import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:quotanic/configs/extension/flush_bar_extension.dart';
import 'package:quotanic/main.dart';

class PickFile {
  /// Select image from camera or gallery
  static Future<void> filePicker({
    required Function(File file) onFilePicked,
    required BuildContext context,
  }) async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(compressionQuality: 30);

    if (result != null) {
      File file = File(result.files.single.path!);
      onFilePicked.call(file);
    } else {
      // User canceled the picker
    }
  }

  static Future<void> filePickerMulti({
    required Function(List<File> file) onFilePicked,
    required BuildContext context,
    required int maxFileLength,
  }) async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(compressionQuality: 30, allowMultiple: true);

    if (result != null) {
      List<File> files = result.files.map(
        (e) {
          return File(e.path!);
        },
      ).toList();
      if (files.length > maxFileLength) {
        navigatorKey.currentContext?.flushBarErrorMessage(
            message: 'You can select up to 3 files only.');
        files = [];
        return;
      }

      const int maxSizeInBytes = 10 * 1024 * 1024; // 10 MB
      for (var file in files) {
        final fileSize = File(file.path).lengthSync();
        if (fileSize > maxSizeInBytes) {
          navigatorKey.currentContext?.flushBarErrorMessage(
              message:
                  "Each file must be less than 10MB. '${file.path.lastIndexOf('/')}' is too large.");
          files = [];
          return;
        }
      }

      onFilePicked.call(files);
    }
  }
}
