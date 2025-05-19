import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF212121),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
        ),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Profile'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white70),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Icon(Icons.comment, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    'support',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xFF212121),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              color: const Color(0xFF212121),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, size: 40, color: Colors.white),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'andaz kumar',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'member since DEC, 2020',
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white70, width: 1),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.edit_outlined, color: Colors.white70),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              color: const Color(0xFF212121),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),

                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.directions_car, color: Colors.white),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              'get to know your vehicles, inside out\nCRED garage',
                              style: TextStyle(fontSize: 16, color: Colors.white70),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios, color: Colors.white70),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),

                    _buildStatRow(
                      icon: Icons.score,
                      title: 'credit score',
                      value: '757',
                      extra: 'REFRESH AVAILABLE',
                      extraColor: Colors.green,
                    ),
                    const Divider(color: Colors.white24, height: 24),
                    _buildStatRow(
                      icon: Icons.currency_rupee,
                      title: 'lifetime cashback',
                      value: '₹3',
                    ),
                    const Divider(color: Colors.white24, height: 24),
                    _buildStatRow(
                      icon: Icons.account_balance,
                      title: 'bank balance',
                      value: 'check',
                    ),
                  ],
                ),
              ),
            ),

            Container(
              color: const Color(0xFF000000),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),

                    Text(
                      'YOUR REWARDS & BENEFITS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildStatRow(
                      title: 'cashback balance',
                      value: '₹0',
                      isVertical: true,
                    ),
                    const Divider(color: Colors.white24, height: 24),
                    _buildStatRow(
                      title: 'coins',
                      value: '26,46,583',
                      isVertical: true,
                    ),
                    const Divider(color: Colors.white24, height: 24),
                    _buildStatRow(
                      title: 'win upto Rs 1000',
                      value: 'refer and earn',
                      isVertical: true,
                    ),
                    const SizedBox(height: 48),

                    Text(
                      'TRANSACTIONS & SUPPORT',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildStatRow(
                      icon: Icons.receipt,
                      title: 'all transactions',
                      value: '',
                      showArrow: true,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow({
    IconData? icon,
    required String title,
    required String value,
    String? extra,
    Color? extraColor,
    bool isVertical = false,
    bool showArrow = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null) ...[
            Icon(icon, color: Colors.white70),
            const SizedBox(width: 16),
          ],
          Expanded(
            child: isVertical
                ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            )
                : Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      if (extra != null) ...[
                        const SizedBox(width: 4),
                        Container(
                          width: 6,
                          height: 6,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          extra,
                          style: TextStyle(fontSize: 14, color: extraColor ?? Colors.white70),
                        ),
                      ],
                    ],
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
          if (!isVertical && (value.isNotEmpty || showArrow)) ...[
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 16),
          ],
          if (isVertical && (value.isNotEmpty || showArrow)) ...[
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 16),
          ],
        ],
      ),
    );
  }
}