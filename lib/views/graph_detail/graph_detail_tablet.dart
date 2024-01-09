part of graph_detail_view;

// ignore: must_be_immutable
class _GraphDetailTablet extends StatelessWidget {
  final GraphDetailViewModel viewModel;

  _GraphDetailTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('GraphDetailTablet')),
    );
  }
}