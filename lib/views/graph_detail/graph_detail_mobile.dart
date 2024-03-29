part of graph_detail_view;

// ignore: must_be_immutable
class _GraphDetailMobile extends StatelessWidget {
  final GraphDetailViewModel viewModel;

  const _GraphDetailMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palettes.primary,
        leading: const BackButton(color: Palettes.white),
        title: Text(
          '${viewModel.obj?.tradingSymbol}',
          style: Get.textTheme.titleLarge!.copyWith(color: Palettes.white),
        ),
      ),
      body: StreamBuilder<ChartHistorical>(
        stream: viewModel.chartIntrday.stream,
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            double low = snapshot.data!.high!.reduce((low, current) => low < current ? low : current);
            double high = snapshot.data!.high!.reduce((low, current) => low < current ? low : current);
            double price = snapshot.data!.open!.isNotEmpty ? snapshot.data!.open!.last : 0.0;
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 400,
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SfCartesianChart(
                      zoomPanBehavior: ZoomPanBehavior(
                        enablePinching: true,
                        enablePanning: true,
                        zoomMode: ZoomMode.xy,
                      ),
                      primaryXAxis: DateTimeAxis(
                        majorGridLines: const MajorGridLines(width: 0),
                        intervalType: DateTimeIntervalType.days,
                        interval: 7,
                      ),
                      primaryYAxis: NumericAxis(
                        autoScrollingDelta: 10,
                        minimum: low - 1,
                        maximum: high + 1,
                      ),
                      onZooming: (ZoomPanArgs args) {
                        // minVisibleY = args.axis!.rangeController!.end;
                        // maxVisibleY = args.axis!.rangeController!.start;
                      },
                      series: <CandleSeries>[
                        CandleSeries<CandleData, DateTime>(
                          dataSource: generateCandleData(snapshot.data!),
                          xValueMapper: (CandleData candle, _) => candle.date,
                          lowValueMapper: (CandleData candle, _) => candle.low,
                          highValueMapper: (CandleData candle, _) => candle.high,
                          openValueMapper: (CandleData candle, _) => candle.open,
                          closeValueMapper: (CandleData candle, _) => candle.close,
                          bearColor: Colors.red,
                          bullColor: Colors.green,
                          enableSolidCandles: true,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Stock Price:- $price',
                          style: Get.textTheme.titleLarge!.copyWith(color: Palettes.basic),
                        ),
                        Container(
                          height: 45,
                          width: 140,
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2.64),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Palettes.basicShade300,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextField(
                            controller: viewModel.valueController,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'^\d{0,2}$')),
                            ],
                            autocorrect: true,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: '1 stock',
                              isDense: true,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: viewModel.buyStockHanlder,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Palettes.green),
                              ),
                              child: Text(
                                'BUY',
                                style: Get.textTheme.titleMedium!.copyWith(color: Palettes.white),
                              ),
                            ),
                            const SizedBox(width: 14.0),
                            ElevatedButton(
                              onPressed: viewModel.sellStockHanlder,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Palettes.primary),
                              ),
                              child: Text(
                                'SELL',
                                style: Get.textTheme.titleMedium!.copyWith(color: Palettes.white),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class CandleData {
  final DateTime date;
  final double open;
  final double high;
  final double low;
  final double close;

  CandleData({
    required this.date,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
  });
}

List<CandleData> generateCandleData(ChartHistorical value) {
  DateTime startDate = DateTime.now().subtract(const Duration(days: 6));
  List<CandleData> data = [];

  for (int i = 0; i < 4; i++) {
    DateTime date = startDate.add(Duration(days: i));
    data.add(
      CandleData(
        date: date,
        open: value.open![i],
        high: value.open![i],
        close: value.close![i],
        low: value.low![i],
      ),
    );
  }

  return data;
}
