import 'package:flutter/material.dart';
import 'package:ltmobile/screens/register_screen.dart';

import 'login_screen.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlueAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Colors.blue),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Khách",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Điều hướng đến LoginScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: const Text(
                          "Đăng nhập",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      GestureDetector(
                        onTap: () {
                          // Điều hướng đến RegisterScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()),
                          );
                        },
                        child: const Text(
                          "Đăng ký",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // List of Options
            _buildListTile(
              icon: Icons.security,
              title: "Quy định sử dụng",
              onTap: () {},
            ),
            _buildListTile(
              icon: Icons.privacy_tip,
              title: "Chính sách bảo mật",
              onTap: () {},
            ),
            _buildListTile(
              icon: Icons.assignment,
              title: "Điều khoản dịch vụ",
              onTap: () {},
            ),
            _buildListTile(
              icon: Icons.phone,
              title: "Tổng đài CSKH 19002115",
              onTap: () {},
            ),
            _buildListTile(
              icon: Icons.thumb_up,
              title: "Đánh giá ứng dụng",
              onTap: () {},
            ),
            _buildListTile(
              icon: Icons.share,
              title: "Chia sẻ ứng dụng",
              onTap: () {},
            ),
            _buildListTile(
              icon: Icons.help_outline,
              title: "Một số câu hỏi thường gặp",
              onTap: () {},
            ),
            _buildListTile(
              icon: Icons.logout,
              title: "Đăng xuất",
              onTap: () {
                // Xử lý đăng xuất
              },
            ),
            const SizedBox(height: 16),

            // Footer Section
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Địa chỉ: Cơ sở 221B Hoàng Văn Thụ, Phường 8, Quận Phú Nhuận, TP. Hồ Chí Minh",
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Email: bvdaihoccoso3@umc.edu.vn\n(028) 38 420 070\nhttps://www.bvdaihoccoso3.com.vn/",
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Phiên bản 1.0.1",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}