import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  Offset _offset = const Offset(-1, 0);

  @override
  void initState() {
    super.initState();
    // Dispara a animação para o centro após construir a tela
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _offset = const Offset(0, 0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF34A9E0),
      ),
      body: Column(
        children: [
          // Container azul com imagem animada
          Container(
            width: double.infinity,
            height: 300,
            color: const Color(0xFF34A9E0),
            child: AnimatedSlide(
              offset: _offset,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOut,
              child: Center(
                child: Image.asset('assets/logo.png'),
              ),
            ),
          ),

          const SizedBox(height: 20),
          const Text(
            'Register',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 32, right: 32, bottom: 16, top: 16),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32, right: 32, bottom: 16, top: 16),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32, right: 32, bottom: 16, top: 16),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Repeat Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock)),
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 16, top: 16),
            child: ElevatedButton(
              onPressed: () {
                // ação do botão
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF34A9E0),
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
