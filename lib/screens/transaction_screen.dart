import 'package:flutter/material.dart';
import 'package:justduit/models/transaction_model.dart';
import 'package:intl/intl.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  var data = TransactionModel().getDummyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transaction'),
        ),
        body: SafeArea(
            child: FutureBuilder(
                future: Future.delayed(Duration(seconds: 1)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return RefreshIndicator(
                      onRefresh: () {
                        return Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            data = TransactionModel().getDummyData();
                          });
                        });
                      },
                      child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(data[index].TransactionCategory!),
                                        Text(data[index].date!),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(data[index].symbol! +
                                        " " +
                                        NumberFormat.simpleCurrency(
                                                locale: 'id-ID')
                                            .format(data[index].amount)),
                                  ],
                                ),
                              ),
                            );
                          }),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                })));
  }
}
