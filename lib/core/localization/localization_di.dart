import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'domain/app_error_localizer.dart';

final class LocalizationDi {
  LocalizationDi._();

  static final appErrorLocalizer = Provider((ref) => AppErrorLocalizer());
}
