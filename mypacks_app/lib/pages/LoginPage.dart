import 'package:flutter/material.dart';
import 'package:mypacks_app/pages/RegisterPage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
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
      body: Column(
        children: [
          // Container azul com imagem animada
          Container(
            width: double.infinity,
            height: 350,
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
            'Welcome to My Packs',
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
                'Enter',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 16, top: 16),
            child: ElevatedButton(
              onPressed: () {
                // ação do botão Google
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE3F2FD), // Azul mais claro
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/googleLogo.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Login with Google',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 16, top: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Registerpage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD9D9D9),
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text(
                'Create account',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 16, top: 16),
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                'Forgot my password',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
