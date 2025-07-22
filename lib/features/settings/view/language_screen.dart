import 'package:flutter/material.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/settings/view/widget/lang_widget.dart';
import 'package:quotanic/features/settings/view/widget/setting_widget.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        title: Text(S.current.language,
          // 'Language',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: LangWidget(),
    );
  }
}
