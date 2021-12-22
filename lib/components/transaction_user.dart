import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  
  const TransactionUser({ Key? key }) : super(key: key);

  @override
  
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final List<Transaction> _transactions =[
    Transaction(
      id: "t1",
      title: "Conta de luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Spotify",
      value: 26.90,
      date: DateTime.now(),
    ),
  ];
  _addTransaction(String title, double value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value:value ,
      date: DateTime.now(),
    );
    setState(() {
      _transactions.add(newTransaction);
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Column(      
      children: [
        TransactionList(
          _transactions
        ),
        TransactionForm(_addTransaction),
      ],
    );
  }
  
}
