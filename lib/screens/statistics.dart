import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 0.0;
    const yearTextStyle = TextStyle(fontSize: 12, color: Colors.black);
    return Scaffold(
      backgroundColor: Color.fromRGBO(9, 133, 119, 100),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(15, 30, 0, 0),
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: Container(
                    padding: EdgeInsets.only(right: 5),
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ))),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: Text(
              'Statistics',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    shape: BoxShape.rectangle,
                    color: Colors.white),
                child: Text(
                  'Spending',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Text(
                  'Left',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 300,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              children: <Widget>[
                ChartContainer(
                  title: '\$ 10.02',
                  color: Colors.transparent,
                  chart: LineChartContent(),
                ),
              ],
            ),
          ),
          //       LineChart(
          //     LineChartData(
          //       lineTouchData: LineTouchData(enabled: false),
          //       lineBarsData: [
          //         LineChartBarData(
          //           spots: [
          //             FlSpot(0, 1),
          //             FlSpot(1, 1),
          //             FlSpot(2, 3),
          //             FlSpot(3, 4),
          //             FlSpot(3, 5),
          //             FlSpot(4, 4)
          //           ],
          //           isCurved: true,
          //           barWidth: 2,
          //           colors: [
          //             Colors.black,
          //           ],
          //           belowBarData: BarAreaData(
          //             show: true,
          //             colors: [Colors.lightBlue.withOpacity(0.5)],
          //             cutOffY: cutOffYValue,
          //             applyCutOffY: true,
          //           ),
          //           aboveBarData: BarAreaData(
          //             show: true,
          //             colors: [Colors.lightGreen.withOpacity(0.5)],
          //             cutOffY: cutOffYValue,
          //             applyCutOffY: true,
          //           ),
          //           dotData: FlDotData(
          //             show: false,
          //           ),
          //         ),
          //       ],
          //       minY: 0,
          //       titlesData: FlTitlesData(
          //         bottomTitles: SideTitles(
          //             showTitles: true,
          //             reservedSize: 5,
          //             getTitles: (value) {
          //               switch (value.toInt()) {
          //                 case 0:
          //                   return '2017';
          //                 case 1:
          //                   return '2018';
          //                 case 2:
          //                   return '2019';
          //                 case 3:
          //                   return '2020';
          //                 case 4:
          //                   return '2021';
          //                 default:
          //                   return '';
          //               }
          //             }),
          //         leftTitles: SideTitles(
          //           showTitles: true,
          //           getTitles: (value) {
          //             return '\$ ${value + 150}';
          //           },
          //         ),
          //       ),
          //       axisTitleData: FlAxisTitleData(
          //           leftTitle: AxisTitle(showTitle: true, titleText: 'Value', margin: 10),
          //           bottomTitle: AxisTitle(
          //               showTitle: true,
          //               margin: 10,
          //               titleText: 'Year',
          //               textStyle: yearTextStyle,
          //               textAlign: TextAlign.right)),
          //       gridData: FlGridData(
          //         show: true,
          //         checkToShowHorizontalLine: (double value) {
          //           return value == 1 || value == 2 || value == 3 || value == 4;
          //         },
          //      ),
          // ),
          //   ),
          Spacer(),
          //bar chart
          ListTile(
            leading: FittedBox(
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(Icons.shopping_cart,
                          size: 20, color: Colors.red)),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('T-shirt',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text('Shopping',
                            style:
                                TextStyle(color: Colors.white24, fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            title: Icon(
              Icons.trending_down_sharp,
              color: Colors.white,
            ),
            trailing: Text('\$. 100',
                style: TextStyle(color: Colors.yellow, fontSize: 16)),
          ),
          Container(
            height: 30,
            padding: EdgeInsets.only(left: 25),
            alignment: Alignment.centerLeft,
            child: VerticalDivider(
              color: Colors.white,
              thickness: 2,
            ),
          ),
          ListTile(
            leading: FittedBox(
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(Icons.shopping_cart,
                          size: 20, color: Colors.red)),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Top up',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text('Money',
                            style:
                                TextStyle(color: Colors.white24, fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            title: Icon(
              Icons.trending_down_sharp,
              color: Colors.white,
            ),
            trailing: Text('\$. 1000',
                style: TextStyle(color: Colors.yellow, fontSize: 16)),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Use your money as needed',
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
          Spacer(),
        ],
      ),
      persistentFooterButtons: [
        Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          alignment: Alignment.center,
          height: 100 / 2,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
              ),
              Icon(
                Icons.account_balance_wallet,
              ),
              Icon(
                Icons.insert_chart,
              ),
              Icon(Icons.person),
            ],
          ),
        )
      ],
    );
  }
}

class ChartContainer extends StatelessWidget {
  final Color color;
  final String title;
  final Widget chart;

  const ChartContainer({
    Key key,
    @required this.title,
    @required this.color,
    @required this.chart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.width * 0.95 * 0.75,
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded( 
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.width * 0.95 * 0.65,
                padding: EdgeInsets.all(5), 
                child: chart,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LineChartContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 1,
        minY: 1,
        maxX: 7,
        maxY: 7,
        lineBarsData: lineChartBarData,
        titlesData: FlTitlesData(
          bottomTitles: SideTitles(
            showTitles: true,
            getTextStyles: (value) => TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            getTitles: (value) {
              switch (value.toInt()) {
                case 2:
                  return 'Mon';
                case 3:
                  return 'Tues';
                case 4:
                  return 'Wed';
                case 5:
                  return 'Thu';
                case 6:
                  return 'Fri';
                case 7:
                  return 'Sat';
                case 1:
                  return 'Sun';
              }
              return '';
            },
          ),
          leftTitles: SideTitles(
            interval: 7,
            showTitles: false,
            getTextStyles: (value) => TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            getTitles: (value) {
              if (value.toInt() == 0)
                return '';
              else
                return value.toInt().toString();
            },
          ),
        ),
      ),
    );
  }
}

List<Color> lineColor = [
  Color(0xfff3f169),
];

List<LineChartBarData> lineChartBarData = [
  LineChartBarData(colors: lineColor, isCurved: true, spots: [
    FlSpot(1.3, 1.7),
    FlSpot(2, 6),
    FlSpot(2.8, 3),
    FlSpot(3.2, 4),
    FlSpot(4, 1.3),
    FlSpot(4.5, 3.5),
    FlSpot(5, 2),
    FlSpot(5.5, 3),
    FlSpot(6, 2),
  ])
];
