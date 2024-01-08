import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'provider/main_provider.dart';

class ProviderInjector {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(lazy: true, create: (_) => MainProvider()),
    ..._independentServices,
    ..._dependentServices,
    ..._consumableServices,
  ];

  static final List<SingleChildWidget> _independentServices = [];

  static final List<SingleChildWidget> _dependentServices = [];

  static final List<SingleChildWidget> _consumableServices = [];
}
