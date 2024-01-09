// ignore_for_file: use_string_in_part_of_directives

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22, left: 18, right: 18, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 70),
                  Text(
                    'Holding :-',
                    style: Get.textTheme.headlineMedium!.copyWith(
                      color: Palettes.basic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _cardTile(),
                  const SizedBox(height: 18),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: viewModel.closeAllHandler,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Palettes.primary),
                      ),
                      child: Text(
                        'Close all',
                        style: Get.textTheme.titleMedium!.copyWith(color: Palettes.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'All Orders :-',
                    style: Get.textTheme.headlineMedium!.copyWith(
                      color: Palettes.basic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            _orderListing(),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 12, left: 18, right: 18),
              child: Text(
                'Postions :-',
                style: Get.textTheme.headlineMedium!.copyWith(
                  color: Palettes.basic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _postionListing(),
          ],
        ),
      ),
    );
  }

  ListView _orderListing() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      shrinkWrap: true,
      itemCount: viewModel.trades.length,
      itemBuilder: (context, i) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Material(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            elevation: 5,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () => viewModel.singlestockHandler(viewModel.trades[i]),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            viewModel.trades[i].tradingSymbol!,
                            style: Get.textTheme.titleMedium!.copyWith(color: Palettes.basic, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            viewModel.trades[i].tradedPrice.toString(),
                            style: Get.textTheme.titleLarge!.copyWith(color: Palettes.basic, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: viewModel.trades[i].transactionType == "BUY" ? Colors.blue : Colors.red,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        viewModel.trades[i].transactionType!,
                        style: Get.textTheme.bodyLarge!.copyWith(color: Palettes.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
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
                    viewModel.investPrice.toString() ?? '4,000.00',
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

  _postionListing() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      shrinkWrap: true,
      itemCount: viewModel.postion.length,
      itemBuilder: (context, i) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Material(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            elevation: 5,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () => viewModel.singlestockHandler(viewModel.trades[i]),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            viewModel.postion[i].tradingSymbol!,
                            style: Get.textTheme.titleMedium!.copyWith(color: Palettes.basic, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            viewModel.postion[i].dayBuyValue.toString(),
                            style: Get.textTheme.titleLarge!.copyWith(color: Palettes.basic, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'hello',
                      style: Get.textTheme.titleMedium!.copyWith(color: Palettes.basicShade400, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
