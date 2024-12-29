import 'package:flutter/material.dart';

import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Register account"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Username Field
            _buildTextField(label: "Tài khoản"),
            const SizedBox(height: 16),

            // Email Field
            _buildTextField(label: "Email"),
            const SizedBox(height: 16),

            // Nickname Field
            _buildTextField(label: "Họ và Tên"),
            const SizedBox(height: 16),

            // Phone Field
            _buildTextField(label: "Số điện thoại"),
            const SizedBox(height: 16),

            // Password Field
            _buildTextField(label: "Mật khẩu", isPassword: true),
            const SizedBox(height: 16),

            // Confirm Password Field
            _buildTextField(label: "Xác nhận mật khẩu", isPassword: true),
            const SizedBox(height: 24),

            // Register Button
            ElevatedButton(
              onPressed: () {
                // Xử lý đăng ký
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Đăng ký",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                  color: Colors.white,),
              ),
            ),
            const SizedBox(height: 16),

            // Login Link
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: const Text(
                  "Đăng nhập",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({required String label, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
    );
  }
}
