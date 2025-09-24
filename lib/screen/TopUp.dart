import 'package:flutter/material.dart';

class TopUp extends StatefulWidget {
  final Function(double) onTopUp; 

  const TopUp({super.key, required this.onTopUp});

  @override
  State<TopUp> createState() => _TopUpState();
}
class _TopUpState extends State<TopUp> {
  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Top Up Saldo"),
      content: TextField(
        controller: amountController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          labelText: "Masukkan nominal",
          prefixText: "Rp ",
        ),
      ),
      actions: [
        TextButton(
          child: const Text("Batal"),
          onPressed: () => Navigator.pop(context),
        ),
        ElevatedButton(
          child: const Text("Top Up"),
          onPressed: () {
            if (amountController.text.isNotEmpty) {
              double amount = double.parse(amountController.text);

              widget.onTopUp(amount);

              Navigator.pop(context);
            }
          },
        ),
      ],
    );
  }
}
