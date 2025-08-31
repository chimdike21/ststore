import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
  final TapGestureRecognizer _termsTapGestureRecognizer =
      TapGestureRecognizer();
  bool _obscurePassword = true;
  bool _agreeToTerms = false;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer.onTap = () {
      Navigator.pushReplacementNamed(context, '/sign-in');
    };

    _termsTapGestureRecognizer.onTap = () {
      // Handle tap on 'Terms & Conditions'
      // show a dialog or navigate to terms page
      // Navigator.pushNamed(context, '/terms');
    };
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    _termsTapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Create your Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM Sans',
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Let\'s get you all set up so you can start shopping',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'DM Sans',
                  color: Color(0xFF7C7C7C),
                ),
              ),
              const SizedBox(height: 32),
              //Email TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: const Color(0xFF171717),
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'DM Sans',
                    color: Color(0xFF7C7C7C),
                  ),
                  border: const UnderlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),

              TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: const Icon(
                    Icons.person_outline,
                    color: const Color(0xFF171717),
                  ),
                  border: const UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),

              //password
              TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: const Color(0xFF171717),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: const Color(0xFF171717),
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  border: const UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 32),
                            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: _agreeToTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        _agreeToTerms = value ?? false;
                      });
                    },
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return const Color(0xFF4B5320); // checked color (army green)
                        }
                        return Colors.grey; // unchecked color
                      },
                    ),
                    checkColor: Colors.white, // tick color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF7C7C7C),
                          fontFamily: 'DM Sans',
                        ),
                        children: [
                          const TextSpan(
                            text: 'By creating an account, you agree to our ',
                          ),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                            recognizer: _termsTapGestureRecognizer,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
