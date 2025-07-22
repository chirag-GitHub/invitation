// import 'dart:io';
// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_image_compress/flutter_image_compress.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:quotanic/configs/config.dart';
// import 'package:quotanic/main.dart';
// import 'package:path_provider/path_provider.dart';
//
// class PickImage {
//   /// Select image from camera or gallery
//   static Future<void> showImagePickerBottomSheet({
//     required Function(List<String> imagePath) onImagePicked,
//     bool isShowPickOptions = false,
//     int imgLength = 5,
//     isOpenGallery = true,
//     required BuildContext context,
//   }) async {
//     List<String> images = [];
//     if (isShowPickOptions) {
//       showModalBottomSheet(
//         context: context,
//         useSafeArea: true,
//         isScrollControlled: false,
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         clipBehavior: Clip.antiAliasWithSaveLayer,
//         enableDrag: false,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             top: Radius.circular(20),
//           ),
//         ),
//         builder: (context) {
//           return SafeArea(
//             child: Wrap(
//               children: [
//                 Container(
//                   width: 100.w,
//                   color: Theme.of(context).colorScheme.surface,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                   child: Text(
//                     S.current.selectImageFrom,
//                     // 'Select Image From',
//                     style: Theme.of(context).textTheme.labelLarge,
//                   ),
//                 ),
//                 ListTile(
//                   tileColor: Theme.of(context).scaffoldBackgroundColor,
//                   contentPadding: EdgeInsets.symmetric(horizontal: 20),
//                   leading: Icon(Icons.camera_alt,
//                       size: 24, color: Theme.of(context).colorScheme.onSurface),
//                   title: Text(
//                     S.current.camera,
//                     // "Camera",
//                     style: Theme.of(context).textTheme.bodyMedium,
//                   ),
//                   onTap: () async {
//                     Navigator.pop(context);
//                     // if (await checkPermission(name: AssetSource.camera)) {
//                     try {
//                       final XFile? image = await ImagePicker().pickImage(
//                           source: ImageSource.camera, imageQuality: 30);
//                       if (image != null) {
//                         File? compressedFile = await compressImage(image);
//                         images.add(compressedFile!.path);
//                         onImagePicked.call(images);
//                       }
//                     } on PlatformException catch (p, _) {
//                       navigatorKey.currentContext!
//                           .flushBarErrorMessage(message: p.message.toString());
//                     }
//                     // }
//                   },
//                 ),
//                 ListTile(
//                   tileColor: Theme.of(context).scaffoldBackgroundColor,
//                   contentPadding: EdgeInsets.symmetric(horizontal: 20),
//                   leading: Icon(
//                     Icons.image,
//                     size: 24,
//                     color: Theme.of(context).colorScheme.onSurface,
//                   ),
//                   title: Text(
//                     S.current.gallery,
//                     // "Gallery",
//                     style: Theme.of(context).textTheme.bodyMedium,
//                   ),
//                   onTap: () async {
//                     Navigator.pop(context);
//                     try {
//                       var xFileImage = await ImagePicker().pickMultiImage(
//                           limit: imgLength == 1 ? 2 : imgLength,
//                           imageQuality: 30);
//                       if (xFileImage.isNotEmpty) {
//                         if (xFileImage.length > imgLength) {
//                           for (int i = 0; i < imgLength; i++) {
//                             File? compressedFile =
//                                 await compressImage(xFileImage[i]);
//                             if (compressedFile != null) {
//                               images.add(compressedFile.path);
//                             } else {
//                               navigatorKey.currentContext!.flushBarErrorMessage(
//                                   message: S.current.somethingWentWrong);
//                             }
//                           }
//                         } else {
//                           for (int i = 0; i < xFileImage.length; i++) {
//                             File? compressedFile =
//                                 await compressImage(xFileImage[i]);
//                             if (compressedFile != null) {
//                               images.add(compressedFile.path);
//                             } else {
//                               navigatorKey.currentContext!.flushBarErrorMessage(
//                                   message: S.current.somethingWentWrong);
//                             }
//                           }
//                           // images.addAll(image);
//                         }
//                       }
//                       onImagePicked.call(images);
//                     } on PlatformException catch (e) {
//                       navigatorKey.currentContext!
//                           .flushBarErrorMessage(message: e.message.toString());
//                     }
//                   },
//                 )
//               ],
//             ),
//           );
//         },
//       );
//     } else {
//       if (isOpenGallery) {
//         final XFile? image = await ImagePicker()
//             .pickImage(source: ImageSource.gallery, imageQuality: 30);
//         if (image != null) {
//           File? compressedFile = await compressImage(image);
//           images.add(compressedFile!.path);
//         }
//         onImagePicked.call(images);
//       } else {
//         final XFile? image = await ImagePicker()
//             .pickImage(source: ImageSource.camera, imageQuality: 30);
//         if (image != null) {
//           File? compressedFile = await compressImage(image);
//           images.add(compressedFile!.path);
//         }
//         onImagePicked.call(images);
//       }
//     }
//   }
//
//   // Format File Size
//   static String getFileSizeString({required int bytes, int decimals = 0}) {
//     if (bytes <= 0) return "0 Bytes";
//     const suffixes = [" Bytes", "KB", "MB", "GB", "TB"];
//     var i = (log(bytes) / log(1024)).floor();
//     return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + suffixes[i];
//   }
//
//   // Compress image to a target size (below 2MB in this case)
//   static Future<File?> compressImage(XFile image) async {
//     int targetSize = 2 * 1024 * 1024; // 2MB in bytes
//
//     // Check the size of the image
//     int originalSize = File(image.path).lengthSync();
//     debugPrint('Original Image Size: ${originalSize / 1024} KB');
//
//     // Try compressing the image until it is less than 2MB
//     XFile? compressedImage = image;
//     int currentSize = originalSize;
//     int quality = 100;
//     final tempDir = await getTemporaryDirectory();
//     while (currentSize > targetSize && quality > 10) {
//       // Reduce quality gradually
//       compressedImage = await FlutterImageCompress.compressAndGetFile(
//         File(image.path).absolute.path,
//         '${tempDir.path}/image.jpg',
//         quality: quality,
//         minWidth: 800, // Optional, scale down the image if needed
//         minHeight: 600, // Optional, scale down the image if needed
//       );
//
//       currentSize = File(compressedImage!.path).lengthSync();
//       quality -= 10; // Reduce quality by 10% in each iteration
//     }
//
//     debugPrint('Compressed Image Size: ${currentSize / 1024} KB');
//     return compressedImage != null ? File(compressedImage.path) : null;
//   }
// }
//
