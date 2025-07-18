import 'package:flutter/material.dart';
import 'package:meetmax/StartedScreen/sign_in.dart';
import '../Widget/custom_text_field.dart';
import '../Widget/social_login_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            // Meet max logo
            Image.asset('assets/images/Logo.jpg', height: 20, width: 20),

            const SizedBox(width: 8),
            const Text(
              'Meetmax',
              style: TextStyle(
                color: Color(0xFF4E5D78),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          // Language dropdown
          DropdownButton<String>(
            value: 'English (UK)',
            icon: const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
            underline: const SizedBox(),
            onChanged: (String? newValue) {},
            items:
                <String>[
                  'English (UK)',
                  'Bangla',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  );
                }).toList(),
          ),
          const SizedBox(width: 14),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Getting Started',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 8),
            Center(
              child: const Text(
                'Create an account to continue and connect\nwith the people.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 30),

            // Social Login Buttons
            Row(
              children: [
                Expanded(
                  child: SocialLoginButton(
                    logoUrl: 'assets/images/Vector.jpg',
                    text: 'Log in with Google',
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Google Login !')),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: SocialLoginButton(
                    logoUrl: 'assets/images/Apple.jpg',
                    text: 'Log in with Apple',
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Apple Login !')),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // OR divider
            const Center(
              child: Text('OR', style: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(height: 20),

            // Email, Name, Password, Date of Birth TextFields
            const CustomTextField(
              hintText: 'Your Email',
              prefixIcon: Icons.alternate_email,
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              hintText: 'Your Name',
              prefixIcon: Icons.person_pin,
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              hintText: 'Create Password',
              prefixIcon: Icons.lock_outline,
              isPassword: true,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              hintText: 'Date of birth',
              prefixIcon: Icons.calendar_today_outlined,
              readOnly: true,
              suffixIcon: Icons.keyboard_arrow_down,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Selected Date: ${pickedDate.toLocal().toString().split(' ')[0]}',
                      ),
                    ),
                  );
                }
              },
            ),
            const SizedBox(height: 24),

            // Gender Selection
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Male'),
                    value: 'Male',
                    groupValue: _selectedGender,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedGender = value;
                      });
                    },
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    activeColor: Colors.blue,
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Female'),
                    value: 'Female',
                    groupValue: _selectedGender,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedGender = value;
                      });
                    },
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    activeColor: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SignInScreen()),
                    );
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
