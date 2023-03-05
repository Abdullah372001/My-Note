import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset('images/1.png'),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Form(
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'username',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: 'passwoed',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                ),
              ),
            ]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'if you have Account ',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('Login');
              },
              child: const Text("Click Here"),
            )
          ],
        ),
        SizedBox(
          width: 150,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('Login');
            },
            child: const Text(
              "Sign up",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ]),
    );
  }
}
