import 'package:flutter/material.dart';
import 'package:http_teste/models/transaction.dart';

class TransactionForm extends StatelessWidget {
  
  final TextEditingController titlecontroller = TextEditingController();

  final TextEditingController valuecontroller = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Titulo",
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              controller: valuecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Valor (R\$)",
              ),
            ),
            FlatButton(
              onPressed: () {
                final title = titlecontroller.text;
                final value = double.tryParse(valuecontroller.text) ?? 0.0;
                onSubmit(title, value);
              },
              child: Text("Nova Transacao"),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
