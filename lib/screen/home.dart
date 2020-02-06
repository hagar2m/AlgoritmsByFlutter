import 'dart:async';
import 'dart:math';

import 'package:algorithms_emplement/sorts/buble.dart';
import 'package:flutter/material.dart';

import '../sorts/insertion .dart';
import '../models/algorithmModel.dart';

List<int> numArray = [4, 6, 2, 0, 7, 9, 6];
List<AlgorithmModel> _sortedAlgoritms = [
  AlgorithmModel(
    name: 'Insertion Sort',
    type: SortAlgorithms.insertion,
    timeComplexity: 'O(n*2)'
  ),
  AlgorithmModel(
    name: 'Bubble Sort',
    type: SortAlgorithms.bubble,
    timeComplexity: 'O(n*2)'
  ),
];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String result;
  String timeComplexity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Some Algorithms'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15.0),
            Text(
              numArray.toString(),
              style: Theme.of(context).textTheme.display1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15.0),
            result != null
                ? Transform.rotate(
                    angle: pi / 2,
                    child: Text(
                      ' -->',
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(color: Theme.of(context).accentColor),
                      textAlign: TextAlign.center,
                    ),
                  )
                : SizedBox(),
            SizedBox(height: 25.0),
            result != null
                ? Text(
                    'Result:  $result',
                    style: Theme.of(context).textTheme.display1.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  )
                : SizedBox(),
            SizedBox(height: 25.0),
            result != null
                ? Text(
                    'TimeComplexity:  $timeComplexity',
                    style: Theme.of(context).textTheme.display1.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  )
                : SizedBox(),
            SizedBox(height: 50.0),
            Flexible(
                child: Container(
              height: 70.0,
              child: ListView.builder(
                  itemExtent: 150.0,
                  scrollDirection: Axis.horizontal,
                  itemCount: _sortedAlgoritms.length,
                  itemBuilder: (_, int index) =>
                      _buildAlgorithmItem(_sortedAlgoritms[index])),
            )),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }

  Widget _buildAlgorithmItem(AlgorithmModel item) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
          color: Theme.of(context).accentColor,
          onPressed: () => _onItemPressed(item),
          child: Text(
            item.name,
            style:
                Theme.of(context).textTheme.body1.copyWith(color: Colors.white),
          )),
    );
  }

  void _onItemPressed(AlgorithmModel item) {
    List<int> arr = [
      ...numArray
    ]; // it create a copy of items with diff refrence
    setState(() {
      result = '---';
      timeComplexity = '---';
    });

    Timer.periodic(new Duration(seconds: 1), (timer) {
      if (item.type == SortAlgorithms.insertion) {
        setState(() {
          result = InsertionSort.sort(arr);
          timeComplexity = item.timeComplexity;
        });
      } else if (item.type == SortAlgorithms.bubble) {
        setState(() {
          result = BubbleSort.sort(arr);
          timeComplexity = item.timeComplexity;
        });
      }
    });
  }
}