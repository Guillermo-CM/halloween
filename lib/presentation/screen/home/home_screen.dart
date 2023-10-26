import 'package:flutter/material.dart';
import 'package:halloween/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu de material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

  class _HomeView extends StatelessWidget {
    const _HomeView({super.key});

    @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) =>Text(appMenuItems[index].title));
    
  }



}
