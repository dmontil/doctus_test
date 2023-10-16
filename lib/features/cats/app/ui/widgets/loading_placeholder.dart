import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingPlaceHolder extends StatelessWidget {
  const LoadingPlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.black,
        child: const Placeholder(
          fallbackHeight: 200,
          fallbackWidth: 200,
        ));
  }
}
