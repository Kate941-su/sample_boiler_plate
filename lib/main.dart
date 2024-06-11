import 'package:flutter/material.dart';
import 'package:flutter_training/counter/counter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return MaterialApp(
      title: 'Riverpod and freezed boilerplate',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Riverpod and freezed Boilerplate'),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${count.num}", style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48
              ),)
            ],
          ),
        ),
        floatingActionButton: IconButton(onPressed: () {
          ref.read(counterProvider.notifier).increment();
        }, icon: const Icon(Icons.add),

        ),
      ),
    );
  }
}
