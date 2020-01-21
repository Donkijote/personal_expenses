import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPct;

  ChartBar(this.label, this.spendingAmount, this.spendingPct);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((_, ct) {
        return Column(
          children: <Widget>[
            Container(
              height: ct.maxHeight * 0.2,
              child: FittedBox(
                child: Text('\$${spendingAmount.toStringAsFixed(2)}'),
              ),
            ),
            SizedBox(
              height: ct.maxHeight * 0.05,
            ),
            Container(
              height: ct.maxHeight * 0.6,
              width: 10,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: spendingPct,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ct.maxHeight * 0.05,
            ),
            Container(
              height: ct.maxHeight * 0.1,
              child: FittedBox(
                child: Text(label),
              ),
            )
          ],
        );
      }),
    );
  }
}
