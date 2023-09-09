import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpense();
  }
}

class _NewExpense extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print("print: $_titleController");
                  },
                  child: const Text("Save Expense"))
            ],
          ),
          TextField(
            controller: _amountController,
            decoration: const InputDecoration(label: Text("Amount")),
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("sumbit")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"))
            ],
          ),
        ],
      ),
    );
  }
}
