part of dashboard_view;

// ignore: must_be_immutable
class _DashboardMobile extends StatelessWidget {
  final DashboardViewModel viewModel;

  const _DashboardMobile(
    this.viewModel,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 70),
            Text(
              'Holding :-',
              style: Get.textTheme.headlineMedium!.copyWith(color: Palettes.basic, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _cardTile(),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Palettes.primary),
                ),
                child: Text(
                  'Close all',
                  style: Get.textTheme.titleMedium!.copyWith(color: Palettes.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Material _cardTile() {
    return Material(
      borderRadius: BorderRadius.circular(6),
      elevation: 5,
      color: Palettes.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Invested',
                    style: Get.textTheme.titleLarge!.copyWith(color: Palettes.basicShade400, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Current',
                    style: Get.textTheme.titleLarge!.copyWith(color: Palettes.basicShade400, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '4,000.00',
                    style: Get.textTheme.displayLarge!.copyWith(color: Palettes.basic),
                  ),
                  Text(
                    '5,000.00',
                    style: Get.textTheme.displayLarge!.copyWith(color: Palettes.basic),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              padding: const EdgeInsets.only(top: 14, bottom: 6),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 0.5,
                    color: Palettes.basicShade200,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'P&L',
                    style: Get.textTheme.headlineMedium?.copyWith(color: Palettes.basicShade400),
                  ),
                  Text(
                    '+1,000.00',
                    style: Get.textTheme.headlineMedium?.copyWith(color: Palettes.green),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
