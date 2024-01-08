part of splash_view;

// ignore: must_be_immutable
class _SplashMobile extends StatelessWidget {
  final SplashViewModel viewModel;

  const _SplashMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          APP_NAME,
          style: Get.textTheme.headlineLarge!.copyWith(fontSize: 40),
        ),
      ),
    );
  }
}
