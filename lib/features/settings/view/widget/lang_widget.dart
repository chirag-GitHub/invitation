import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/features/settings/bloc/setting_bloc.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';

class LangWidget extends StatefulWidget {
  const LangWidget({super.key});

  @override
  State<LangWidget> createState() => _LangWidgetState();
}

class _LangWidgetState extends State<LangWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
        InkWell(
          onTap: () {
            context.read<SettingBloc>().add(ChangeLang(lang: 'en'));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              spacing: 20,
              children: [
                Text(
                  '🇬🇧',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Expanded(
                  child: Text(
                    'English',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                Visibility(
                  visible: SC.userLang == 'en',
                  child: Icon(
                    Icons.check_circle,
                    color: Theme.of(context).primaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
        InkWell(
          onTap: () {
            context.read<SettingBloc>().add(ChangeLang(lang: 'de'));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              spacing: 20,
              children: [
                Text(
                  '🇩🇪',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Expanded(
                  child: Text(
                    'Deutsch',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                Visibility(
                  visible: SC.userLang == 'de',
                  child: Icon(
                    Icons.check_circle,
                    color: Theme.of(context).primaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
      ],
    );
  }
}
