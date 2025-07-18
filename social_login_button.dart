import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String logoUrl;
  final String text;
  final VoidCallback onPressed;

  const SocialLoginButton({
    super.key,
    required this.logoUrl,
    required this.text,
    required this.onPressed,
  });

  bool get _isNetworkImage =>
      logoUrl.startsWith('http') || logoUrl.startsWith('https');

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.grey.shade300),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _isNetworkImage
              ? Image.network(
                logoUrl,
                height: 20,
                width: 20,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.error_outline,
                    size: 20,
                    color: Colors.red,
                  );
                },
              )
              : Image.asset(logoUrl, height: 20, width: 20),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(color: Colors.black, fontSize: 14)),
        ],
      ),
    );
  }
}
