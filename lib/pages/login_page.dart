import 'package:flutter/material.dart';
import 'package:stardewvalleyrecipes/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/FondoLogin.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/PisoMadera2.png'),
                fit: BoxFit.cover,
              ),
              // color: Color(0xFFDDA059),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xFF6B3710), width: 5),
            ),
            child: Form(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    //Incluir Login con Google
                    Container(
                      color: Colors.white,
                      child: Text('Login de Google Here'),
                    ),
                    Spacer(),
                    //Botton de Login
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          MaterialPageRoute route = MaterialPageRoute(builder: (context) => HomePage());
                          setState(() {
                            Navigator.push(context, route);
                          });
                        },
                        child: const Text('Login'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
