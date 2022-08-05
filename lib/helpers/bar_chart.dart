import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChart extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _BarChartState createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 1.5,
      child: SfCartesianChart(
        isTransposed: true,
        enableMultiSelection: true,
        // title: ChartTitle(text: 'Continent wise GDP - 2021'),
        // legend: Legend(isVisible: true),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries>[
          BarSeries<GDPData, String>(
              color: Colors.green,
              trackColor: Colors.yellow,
              name: '',
              dataSource: _chartData,
              isTrackVisible: true,
              xValueMapper: (GDPData gdp, _) => gdp.completed,
              yValueMapper: (GDPData gdp, _) => gdp.inProgress,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
              enableTooltip: true)
        ],
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          //numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
          // title: AxisTitle(text: 'GDP in billions of U.S. Dollars')),
        ),
      ),
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData(
        'Monday',
        50,
      ),
      GDPData(
        'Tuesday',
        50,
      ),
      GDPData(
        'Wednesday',
        10,
      ),
      GDPData(
        'Thursday',
        65,
      ),
      GDPData('Friday', 40),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(
    this.completed,
    this.inProgress,
  );
  final String completed;
  final num inProgress;
}
