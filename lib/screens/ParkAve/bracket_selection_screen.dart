import 'package:flutter/material.dart';
import 'package:hardware_fe/models/bracket_model.dart';
import 'package:hardware_fe/screens/ParkAve/order_summary_screen.dart';
import 'package:http/http.dart' as http;


class BracketSelectionScreen extends StatelessWidget {
  const BracketSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Future<http.Response> fetchBracket() {
      return  http.get(Uri.parse('http://localhost:4000/api/component/1'));
    }
    final bracket = fetchBracket();
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
