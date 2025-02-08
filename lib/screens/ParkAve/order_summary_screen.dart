import 'package:flutter/material.dart';
import 'package:hardware_fe/models/bracket_model.dart';

class OrderSummaryScreen extends StatelessWidget {

  final BracketModel bracket;
  const OrderSummaryScreen({Key? key, required this.bracket}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const trackName = 'Park Ave Track';
    final totalPrice = bracket.priceInStock;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Track: $trackName'),
            const SizedBox(height: 8),
            Text('Bracket: ${bracket.name}'),
            const SizedBox(height: 8),
            Text('Price: \$${bracket.priceInStock}'),
            const Divider(height: 32),
            Text('Total: \$${totalPrice.toStringAsFixed(2)}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showDialog(
                context: context,
                builder: (_) => AlertDialog(
                    title: const Text('Order Placed'),
                    content: const Text('This is just a prototype action!'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('OK'),
                      )
                    ],
                  ),
              );
              },
              child: const Text('Confirm Order'),
            )
          ]
        )
      )

    );

  }


}
