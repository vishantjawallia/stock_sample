// ignore_for_file: unused_element

part of login_view;

class _LoginTablet extends StatelessWidget {
  final LoginViewModel viewModel;

  const _LoginTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('LoginTablet'),
      ),
    );
  }
}
