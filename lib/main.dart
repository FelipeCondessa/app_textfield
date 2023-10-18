import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

final _controller = TextEditingController();

_click() {}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Informe o seu e-mail',
              labelText: 'E-mail', suffixStyle: TextStyle(fontSize: 50),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
            ),
          ),
          const SizedBox(
            width: 20,
            height: 20,
          ),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Informe sua senha',
              labelText: 'Senha',
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
            ),
          ),
          const SizedBox(
            width: 20,
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton(
                child: Text('Login'),
                onPressed: _click,
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                  fixedSize: Size(376, 10),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
