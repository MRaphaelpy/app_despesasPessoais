import 'package:flutter/material.dart';
import 'package:http_teste/models/transaction.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  
  const TransactionList({ Key? key, required this.transactions }) : super(key: key);

  final List<Transaction> transactions;


  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    
    return Column(
            children:widget.transactions.map((tr){
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
            }).toList(),
          );
  }
}