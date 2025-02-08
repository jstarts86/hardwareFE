import 'package:flutter/material.dart';
import 'package:hardware_fe/models/bracket_model.dart';
import 'package:hardware_fe/screens/ParkAve/order_summary_screen.dart';



class BracketSelectionScreen extends StatelessWidget {
  const BracketSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bracket = BracketModel(
      id: 'bracket_pa_1',
      name: 'Standard Park Ave Bracket',
      sku: 'PA-BR-001',
      description: "Default Description",
      imageUrl: "",
      priceInStock: 20.0,
      priceCustom: 30.0,
      compatibleComponentIds: [],
      length: '6 inches',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bracket Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(bracket.getDetails()),
            const SizedBox(height: 16),
            Text('Hello'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderSummaryScreen(
                      bracket: bracket,
                    )
                  )
                );
              },
              child: const Text('Select This Bracket'),
            )
          ]

        )
      )

    );



  }
}
