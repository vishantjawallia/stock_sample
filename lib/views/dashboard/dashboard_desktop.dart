part of dashboard_view;

// ignore: must_be_immutable
class _DashboardDesktop extends StatelessWidget {
  final DashboardViewModel viewModel;

  _DashboardDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('DashboardDesktop')),
    );
  }
}