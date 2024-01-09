// ignore_for_file: unused_element

part of dashboard_view;

class _DashboardTablet extends StatelessWidget {
  final DashboardViewModel viewModel;

  const _DashboardTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Dashboard Tablet'),
      ),
    );
  }
}
