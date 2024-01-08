// ignore_for_file: use_key_in_widget_constructors

library dashboard_view;

import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stock_sample/theme/palettes.dart';
import 'dashboard_view_model.dart';

part 'dashboard_mobile.dart';
part 'dashboard_tablet.dart';
part 'dashboard_desktop.dart';

// ignore: must_be_immutable
class DashboardView extends StatelessWidget {
  static const routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      onViewModelReady: (viewModel) {},
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (_) => _DashboardMobile(viewModel),
          desktop: (_) => _DashboardMobile(viewModel),
          tablet: (_) => _DashboardMobile(viewModel),
        );
      },
    );
  }
}
