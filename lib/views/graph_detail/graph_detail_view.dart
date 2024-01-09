library graph_detail_view;

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stock_sample/theme/palettes.dart';
import 'package:stock_sample/views/dashboard/models/trades.dart';
import 'package:stock_sample/views/graph_detail/models/chart_historical.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'graph_detail_view_model.dart';

part 'graph_detail_mobile.dart';
part 'graph_detail_tablet.dart';
part 'graph_detail_desktop.dart';

// ignore: must_be_immutable
class GraphDetailView extends StatelessWidget {
  static const routeName = '/graph_detail';
  final Trades? obj;

  const GraphDetailView({super.key, this.obj});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GraphDetailViewModel>.reactive(
      viewModelBuilder: () => GraphDetailViewModel(obj),
      onViewModelReady: (viewModel) {
        viewModel.startRealTimeApi();
      },
      onDispose: (viewModel) {
        viewModel.chartIntrday.close();
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (_) => _GraphDetailMobile(viewModel),
          desktop: (_) => _GraphDetailMobile(viewModel),
          tablet: (_) => _GraphDetailMobile(viewModel),
        );
      },
    );
  }
}
