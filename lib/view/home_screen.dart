import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 60,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'ご褒美TODO一覧',
                style: TextStyle(fontSize: 12),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () => debugPrint('ソート開始'),
                icon: const Icon(Icons.sort),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => debugPrint('追加'),
      ),
    );
  }
}
