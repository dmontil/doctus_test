import 'package:flutter/material.dart';
import 'package:doctus_test/core/ui/styles/app_box_decorations.dart';
import 'package:doctus_test/core/ui/styles/app_spaces.dart';

class DialogLayout extends StatelessWidget {
  final String title;
  final String bodyText;
  final bool fullPage;
  final Widget? bodyWidget;
  final Widget buttonsSection;
  final String? image;

  const DialogLayout({
    Key? key,
    required this.title,
    required this.bodyText,
    required this.buttonsSection,
    this.bodyWidget,
    this.fullPage = false,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
              decoration: AppBoxDecoration.topBorderRounded.copyWith(
                color: Colors.white,
              ),
              height: image != null
                  ? MediaQuery.of(context).size.height * 0.50
                  : null,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    gapH24,
                    Text(
                      title,
                      textAlign: TextAlign.center,
                 
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: Sizes.p16),
                      child: bodyWidget ?? const SizedBox.shrink(),
                    ),
                    Text(bodyText,
                        textAlign: TextAlign.center,),
                    gapH20,
                    SizedBox(
                      width: double.infinity,
                      child: buttonsSection,
                    ),
                    gapH20,
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
