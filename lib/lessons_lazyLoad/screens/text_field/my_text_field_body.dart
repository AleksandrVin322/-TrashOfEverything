import 'package:flutter/material.dart';

class MyTextFieldBody extends StatelessWidget {
  const MyTextFieldBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.pregnant_woman_rounded),
                  prefixIcon: const Icon(Icons.abc),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 10,
                        color: Colors.red,
                      )),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.computer),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Icon input',
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 224, 42, 142)),
                  helperText: 'Helper text',
                  helperStyle: const TextStyle(color: Colors.amber),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Send nudes',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  counter: const Text('Каунтер для любого виджета'),
                  prefixIcon: const Icon(Icons.share),
                  errorText: 'pisya',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
