import 'package:flutter/material.dart';
import 'package:hardware_fe/screens/ParkAve/bracket_selection_screen.dart';

class ParkAveSelectionScreen extends StatelessWidget{
  const ParkAveSelectionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Park Ave Track'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Park Ave Track Selection',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BracketSelectionScreen(),
                  ),
                );
              },
              child: const Text('Select Park Ave')
            )
          ]
        )

      )

    );
  }
}
