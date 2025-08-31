import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
  bool _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer.onTap =(){
      Navigator.pushReplacementNamed(context, '/sign-in');
    };
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal:24, vertical:16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height:40),
              const Text(
                'Create your Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM Sans',
                )
              ),
              const SizedBox(height:8),
              const Text(
                'Let\'s get you all set up so you can start shopping',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'DM Sans',
                  color: Color(0xFF7C7C7C),
                )
              ),
              const SizedBox(height:32),
              //Email TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: const Icon(Icons.email_outlined),
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'DM Sans',
                    color: Color(0xFF7C7C7C),
                  ),
                  border: const UnderlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(horizontal:16, vertical:12),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ]
          )
        )
        
      )
    );
  }
}
