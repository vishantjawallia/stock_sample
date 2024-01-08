part of login_view;

class _LoginMobile extends StatelessWidget {
  final LoginViewModel model;

  const _LoginMobile(this.model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: Get.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600, fontSize: 36),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: model.tokenController,
              style: Get.textTheme.titleLarge!.copyWith(color: Palettes.basic, fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                hintText: 'Enter token here',
                hintStyle: Get.textTheme.titleLarge!.copyWith(color: Palettes.grey, fontWeight: FontWeight.normal),
              ),
              maxLines: 8,
              minLines: 1,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(double.maxFinite, 50)),
                backgroundColor: MaterialStateProperty.all(Palettes.primary),
              ),
              onPressed: model.sumbitHandler,
              child: Text(
                'Sumbit',
                style: Get.textTheme.titleMedium!.copyWith(
                  color: Palettes.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
