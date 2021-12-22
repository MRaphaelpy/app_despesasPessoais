import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  const TransactionForm({Key? key}) : super(key: key);

  @override
  _TransactionFormState createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final TextEditingController titlecontroller = TextEditingController();

  final TextEditingController valuecontroller = TextEditingController();

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
                print(titlecontroller.text);
                print(valuecontroller.text);
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
