import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iconly/iconly.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, this.suffixIcon});

  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;

    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(IconlyLight.search, color: color.surface),
        hintText: l10n.searchFieldHint,
        hintStyle: TextStyle(
          color: color.surface,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
        fillColor: color.primary,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
