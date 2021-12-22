import 'package:flutter/material.dart';
import 'package:http_teste/components/transaction_form.dart';
import 'package:http_teste/models/transaction.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactionsr;
  

  @override

 TransactionList(this.transactionsr);

  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: transactionsr.length,
        itemBuilder: (ctx, index){
          final tr = transactionsr[index];
          return Card(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          )
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text("R\$ ${tr.value.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tr.title,
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          ),
                          Text(DateFormat('d MMM y').format(tr.date), style: TextStyle(
                            color: Colors.grey[600]
                          ),),
                        ],
                      )
                    ],
                  ),
          );
        },     
      )
      );
     }
  }