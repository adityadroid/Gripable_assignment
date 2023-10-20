import 'package:flutter/cupertino.dart';
import 'package:gripable_assignment/core/l10n/l10n.dart';

enum SortType { hotSort, newSort, risingSort }

extension SortTypeX on SortType {
  String get key {
    switch (this) {
      case SortType.hotSort:
        return 'hot';
      case SortType.newSort:
        return 'new';
      case SortType.risingSort:
        return 'rising';
    }
  }

  String label(BuildContext context) {
    switch (this) {
      case SortType.hotSort:
        return context.l10n.feedHomeHot;
      case SortType.newSort:
        return context.l10n.feedHomeNew;
      case SortType.risingSort:
        return context.l10n.feedHomeRising;
    }
  }
}
