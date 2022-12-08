import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.of(context);

//     // NOTE: Pattern Inherited
//     /**
//      * final size = MediaQuery.of(context).size;
//      * final navigation = Navigator.of(context);
//      * final theme = Theme.of(context);
//      */

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Center(
//         child: Text('Clicou ${controller.count} vez(es)!'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           controller.increment();
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // initState -> Chamado quando o Widget for construído
  // dispose -> Chamado quando o Widget for destruído

  final names = ['Joao', 'Maria', 'Joaquim', 'Jacob', 'Sara'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: ((context, index) {
            final name = names[index];
            return ListTile(
              title: Text(name),
            );
          }),
        ),
      ),
    );
  }
}

/**
 * Exemplo ListView com for
 *
 * child: ListView(
          children: [
            for (var i = 0; i < 20; i++)
              Container(
                width: double.infinity,
                height: 80,
                margin: const EdgeInsets.all(8),
                color: Colors.red,
                child: Text(
                  '$i',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
          ],
        )
 *
 */
