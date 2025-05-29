import '../arch/async_lifecycle.dart';
import 'domain/app_info.dart';

final class InfoDi {
  InfoDi._();

  static final appInfo = AsyncLifecycleProvider(
    (ref) => AppInfo(),
  );

}