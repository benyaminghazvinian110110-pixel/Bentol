import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashboardScreen(),
  ));
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF090A0F),
      appBar: AppBar(
        backgroundColor: Color(0xFF111319),
        elevation: 0,
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Color(0xFF00FF66).withOpacity(0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.flash_on, color: Color(0xFF00FF66), size: 20),
            ),
            SizedBox(width: 10),
            Text(
              'NEXUS BTC PRO',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18, letterSpacing: 1.2),
            ),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications_active_outlined, color: Colors.white70), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings_outlined, color: Colors.white70), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF161922), Color(0xFF101217)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFF262B3D), width: 1.5),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 10, offset: Offset(0, 5)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('BTC / USDT • Binance', style: TextStyle(color: Colors.white54, fontSize: 12, fontWeight: FontWeight.w600)),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF00FF66).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xFF00FF66).withOpacity(0.4)),
                        ),
                        child: Text('● زنده', style: TextStyle(color: Color(0xFF00FF66), fontSize: 10, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\$86,390.00',
                    style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 0.5),
                  ),
                  SizedBox(height: 14),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      value: 0.52,
                      backgroundColor: Color(0xFFFF3344),
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF00FF66)),
                      minHeight: 10,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('خرید: 3,111 🟢', style: TextStyle(color: Color(0xFF00FF66), fontSize: 12, fontWeight: FontWeight.bold)),
                      Text('🔴 فروش: 2,903', style: TextStyle(color: Color(0xFFFF3344), fontSize: 12, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            buildProCard(
              title: '⚡ کوتاه‌‌مدت و قیمت',
              trend: 'صعودی 🟢',
              strength: 0.4,
              strengthText: '40%',
              support: '\$84,662',
              longVol: '42,331.1 ت',
              resistance: '\$88,118',
              shortVol: '44,058.9 ت',
              whale: 'جریان عادی ⚖️',
              isExpanded: true,
            ),
            SizedBox(height: 16),
            buildProCard(
              title: '📊 میان‌مدت (1h - 12h)',
              trend: 'صعودی 🟢',
              strength: 0.65,
              strengthText: '65%',
              support: '\$83,500',
              longVol: '68,200.0 ت',
              resistance: '\$89,900',
              shortVol: '71,400.0 ت',
              whale: 'ورود پول سنگین 🟢🐋',
              isExpanded: false,
            ),
            SizedBox(height: 16),
            buildProCard(
              title: '📈 بلندمدت (1d - 7d)',
              trend: 'رِنج ⚪',
              strength: 0.5,
              strengthText: '50%',
              support: '\$80,000',
              longVol: '150,000 ت',
              resistance: '\$92,000',
              shortVol: '145,000 ت',
              whale: 'جذب نقدینگی 🟡',
              isExpanded: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProCard({
    required String title,
    required String trend,
    required double strength,
    required String strengthText,
    required String support,
    required String longVol,
    required String resistance,
    required String shortVol,
    required String whale,
    required bool isExpanded,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF141721),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xFF252A3D), width: 1.2),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: ExpansionTile(
        initiallyExpanded: isExpanded,
        collapsedBackgroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        iconColor: Color(0xFF00FF66),
        collapsedIconColor: Colors.white70,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
