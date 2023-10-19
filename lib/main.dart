import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _emailcontroller = TextEditingController();

  final _senhacontroller = TextEditingController();



  _sucessoLogin(){
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Conectando'),
          content: Text('Aguarde um momento'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                child: const Text('Ok')
            ),
          ],
        )
    );

  }

  _falhaLogin(){
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Falha ao conectar'),
          content: Text('Login e/ou senha incorretos'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                child: const Text('Tentar novamente')
            ),
          ],
        )
    );
  }

 bool _validarCampos(String email, String senha){

if(senha || email == null) {
  return null
}
 }






  _click() {
    String email = _emailcontroller.text;

    String senha = _senhacontroller.text;

    if (email == 'fhcondessa4@gmail.com' && senha == 'sexoemeinjetou123') {
      _sucessoLogin();
    } else {
      _falhaLogin();
    }

    setState(() {

    });
  }


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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/image/pet.png',
                height: 140,
                fit: BoxFit.cover,
              ),
              const Text(
                'PET HOUSE',
                style: TextStyle(fontSize: 50),
              ),
              TextField(
                controller: _emailcontroller,
                decoration: const InputDecoration(
                  hintText: 'Informe o seu e-mail',
                  labelText: 'E-mail',
                  suffixStyle: TextStyle(fontSize: 50),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
                ),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              TextField(
                controller: _senhacontroller,
                obscureText: true,
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
        ),
      ),
    );
  }
}
