
import 'package:flutter/material.dart';
import 'package:doctus_test/core/ui/widgets/buttons/cta_button.dart';
import 'package:doctus_test/core/ui/widgets/dialogs/dialog_layout.dart';
import 'dart:io' show Platform;

import 'package:url_launcher/url_launcher.dart';

const String linkPlayStore =
    'https://https://www.google.com/';
const String linkAppStore = 'https://apple.com';

class NeedUpdateDialog extends StatelessWidget {
  const NeedUpdateDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: DialogLayout(
          title:  'Actualizar',
          bodyText: 'Necesitas actualizar la aplicación para continuar',
          buttonsSection: CtaButton(
              onPressed: () => goToStore(),
              text: 'Actualizar',
              color: Colors.black)),
    );
  }
}

Future<void> goToStore() async {
  await launchUrl(Uri.parse(Platform.isAndroid ? linkPlayStore : linkAppStore));
}
