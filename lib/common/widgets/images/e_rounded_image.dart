// import 'dart:io';
// import 'dart:typed_data';
//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import '../../../utils/constants/enums.dart';
// import '../../../utils/constants/sizes.dart';
// import '../shimmers/shimmer.dart';
//
//
// class ERoundedImage extends StatelessWidget {
//   const ERoundedImage({
//     super.key,
//     this.image,
//     this.file,
//     this.border,
//     this.width = 56,
//     this.height = 56,
//     this.memoryImage,
//     this.overlayColor,
//     required this.imageType,
//     this.backgroundColor,
//     this.padding = ESizes.s,
//     this.margin,
//     this.fit = BoxFit.contain,
//     this.applyImageRadius = true,
//     this.borderRadius = ESizes.md,
//   });
//
//   final bool applyImageRadius;
//   final BoxBorder? border;
//   final double borderRadius;
//   final BoxFit? fit;
//   final String? image;
//   final File? file;
//   final ImageType imageType;
//   final Color? overlayColor;
//   final Color? backgroundColor;
//   final Uint8List? memoryImage;
//   final double width, height, padding;
//   final double? margin;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height,
//       margin: margin != null ? EdgeInsets.all(margin!) : null,
//       padding: EdgeInsets.all(padding),
//       decoration: BoxDecoration(border: border, color: backgroundColor, borderRadius: BorderRadius.circular(borderRadius)),
//       child: _buildImageWidget(),
//     );
//   }
//
//   Widget _buildImageWidget() {
//     Widget imageWidget;
//
//     switch (imageType) {
//       case ImageType.network:
//         imageWidget = _buildNetworkImage();
//         break;
//       case ImageType.memory:
//         imageWidget = _buildMemoryImage();
//         break;
//       case ImageType.file:
//         imageWidget = _buildFileImage();
//         break;
//       case ImageType.asset:
//         imageWidget = _buildAssetImage();
//         break;
//     }
//
//     // Apply ClipRRect directly to the image widget
//     return ClipRRect(
//       borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
//       child: imageWidget,
//     );
//   }
//
//   // Function to build the network image widget
//   Widget _buildNetworkImage() {
//     if (image != null) {
//       // Use CachedNetworkImage for efficient loading and caching of network images // Not working in Web but just for loading
//       return CachedNetworkImage(
//         fit: fit,
//         color: overlayColor,
//         imageUrl: image!,
//         errorWidget: (context, url, error) => const Icon(Icons.error),
//         progressIndicatorBuilder: (context, url, downloadProgress) => EShimmerEffect(width: width, height: height),
//       );
//     } else {
//       // Return an empty container if no image is provided
//       return Container();
//     }
//   }
//
//   // Function to build the memory image widget
//   Widget _buildMemoryImage() {
//     if (memoryImage != null) {
//       // Display image from memory using Image widget
//       return Image(fit: fit, image: MemoryImage(memoryImage!), color: overlayColor);
//     } else {
//       // Return an empty container if no image is provided
//       return Container();
//     }
//   }
//
//   // Function to build the asset image widget
//   Widget _buildFileImage() {
//     if (file != null) {
//       // Display image from assets using Image widget
//       return Image(fit: fit, image: FileImage(file!), color: overlayColor);
//     } else {
//       // Return an empty container if no image is provided
//       return Container();
//     }
//   }
//
//   // Function to build the asset image widget
//   Widget _buildAssetImage() {
//     if (image != null) {
//       // Display image from assets using Image widget
//       return Image(fit: fit, image: AssetImage(image!), color: overlayColor);
//     } else {
//       // Return an empty container if no image is provided
//       return Container();
//     }
//   }
// }
import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class ERoundedImage extends StatelessWidget {
  const ERoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = EColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = ESizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
