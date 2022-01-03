// ignore_for_file: use_key_in_widget_constructors, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

import '../entities/bitcoin.dart';
import '../widgets/myscaffold.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  String selectedCurrency = 'USD';
  String bitcoinValueInUSD = '?';

  DropdownButton androidDropdown() {
    List<DropdownMenuItem> dropdownItems = [];
    for (String currency in currencies) {
      dropdownItems.add(DropdownMenuItem(
        child: Text(currency),
        value: currency,
      ));
    }

    return DropdownButton(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value!;
          getData(selectedCurrency);
        });
      },
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];
    for (String currency in currencies) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.pink[100],
      itemExtent: 32.0,
      onSelectedItemChanged: (index) {
        setState(() {
          selectedCurrency = currencies[index];
          getData(selectedCurrency);
        });
      },
      children: pickerItems,
    );
  }

  void getData(String? currency) async {
    try {
      dynamic data = await Bitcoin().getBitcoin(currency: currency);
      setState(() {
        bitcoinValueInUSD = data['rate'].toStringAsFixed(0);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData(null);
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: '🤑 Coin Ticker',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.pinkAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = $bitcoinValueInUSD $selectedCurrency',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.pinkAccent,
            child: Platform.isIOS ? iOSPicker() : androidDropdown(),
          ),
        ],
      ),
    );
  }
}
