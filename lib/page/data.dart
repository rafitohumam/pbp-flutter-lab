import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/form.dart' as form;
import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyDataPage());
}

var formData = form.listBudget;

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Column(
          children: <Widget>[
            for (int i=0; i < formData.length; i++)...[
              Card(
                elevation: 20,
                shadowColor: Colors.blue,
                color: Colors.white,
                child: SizedBox(
                  width: 1000,
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            formData[i].judulBudget,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget> [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                formData[i].nominalBudget.toString(),
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                formData[i].jenisBudget,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}
