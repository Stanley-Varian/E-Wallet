import 'package:flutter/material.dart';

class VerifyEmail extends StatefulWidget {
  @override
  _VerifyEmailState createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  bool _isLoading = false;
  bool _isSended = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify Email"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Tidak menerima pesan email?"),
            SizedBox(height: 10),
            TextButton(
              child: Text(_isLoading ? 'Sending...' : 'Resend'),
              onPressed: () async {
                setState(() => _isLoading = true);

                await Future.delayed(Duration(seconds: 2));

                setState(() {
                  _isLoading = false;
                  _isSended = true;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Email terkirim!")),
                );
              },
            ),
            if (_isSended) Text("Email berhasil dikirim.")
          ],
        ),
      ),
    );
  }
}
