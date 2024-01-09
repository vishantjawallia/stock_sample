part of graph_detail_view;

// ignore: must_be_immutable
class _GraphDetailDesktop extends StatelessWidget {
  final GraphDetailViewModel viewModel;

  const _GraphDetailDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('GraphDetailDesktop')),
    );
  }
}
