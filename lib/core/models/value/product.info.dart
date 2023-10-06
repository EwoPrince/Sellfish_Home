import 'package:flutter/material.dart';
import 'package:sellfishing/core/models/download.links.dart';

class ProductInfo {
  final String name;
  final String subtitle;
  final String description;
  final DownloadLinksValue links;
  final Image image;

  const ProductInfo({
    required this.name,
    this.subtitle = '',
    required this.description,
    required this.image,
    this.links = const DownloadLinksValue(),
  });
}
