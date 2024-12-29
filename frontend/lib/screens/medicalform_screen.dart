import 'package:flutter/material.dart';

class MedicalFormScreen extends StatefulWidget {
  @override
  _MedicalFormScreenState createState() => _MedicalFormScreenState();
}
class _MedicalFormScreenState extends State<MedicalFormScreen> {
  int _selectedTab = 1; // 0: Chưa thanh toán, 1: Đã khám, 2: Đã hủy
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Danh sách phiếu khám bệnh',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Tab Bar
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTabButton(
                  text: 'Đã hẹn',
                  isSelected: _selectedTab == 0,
                  onTap: () {
                    setState(() {
                      _selectedTab = 0;
                    });
                  },
                ),
                _buildTabButton(
                  text: 'Đã khám',
                  isSelected: _selectedTab == 1,
                  onTap: () {
                    setState(() {
                      _selectedTab = 1;
                    });
                  },
                ),
                _buildTabButton(
                  text: 'Đã hủy',
                  isSelected: _selectedTab == 2,
                  onTap: () {
                    setState(() {
                      _selectedTab = 2;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Content
          Expanded(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }
  Widget _buildTabButton({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget _buildContent() {
    if (_selectedTab == 0) {
      return _buildEmptyState('Bạn chưa đặt phiếu khám ');
    } else if (_selectedTab == 1) {
      return _buildEmptyState('Bạn chưa có phiếu khám nào');
    } else {
      return _buildEmptyState('Không có phiếu khám nào bị hủy');
    }
  }
  Widget _buildEmptyState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.article,
              size: 60,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
