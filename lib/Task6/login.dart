import 'package:flutter/material.dart';
import 'landing.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            LandingPage(username: username, password: password),
      ),
    );
  }

  void _gotoRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task 6 - Jornadal',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 42, 1, 6),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _login,
                style: buttonStyle.copyWith(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const Color.fromARGB(255, 42, 1, 6),
                  ),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  side: WidgetStateProperty.all<BorderSide>(
                    const BorderSide(
                      color: Color.fromARGB(255, 42, 1, 6),
                      width: 2,
                    ),
                  ),
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: _gotoRegister,
                style: buttonStyle.copyWith(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const Color.fromARGB(255, 42, 1, 6),
                  ),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  side: WidgetStateProperty.all<BorderSide>(
                    const BorderSide(
                      color: Color.fromARGB(255, 42, 1, 6),
                      width: 2,
                    ),
                  ),
                ),
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}