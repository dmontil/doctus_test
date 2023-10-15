import 'package:flutter/material.dart';

class ShowModal {
  static void showBottomSheet({
    required BuildContext context,
    required Widget widget,
    bool isDismissible = true,
  }) {
    showDialog(
      barrierDismissible: isDismissible,
      context: context,
      builder: (context) => widget,
    );
  }

  static void showCustomDialog({
    required BuildContext context,
    required Widget body,
    bool isDismissible = true,
  }) {
    showDialog(
        barrierDismissible: isDismissible,
        context: context,
        builder: (context) => Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
              child: body,
            ));
  }
}