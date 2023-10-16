import 'package:doctus_test/core/ui/styles/app_colors.dart';
import 'package:doctus_test/core/ui/styles/app_spaces.dart';
import 'package:doctus_test/core/ui/widgets/buttons/cta_button.dart';
import 'package:flutter/material.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Encuentra tu gato'),
      ),
      body: Column(children: [
        Text('Your cat'),
        gapH12,
        Placeholder(fallbackHeight: 30,),
        gapH12,

        CtaButton(onPressed: (){}, text: 'Busca otro gato', color: AppColors.priceBoxSelectedBackground)

      ],),
    );
  }
}
