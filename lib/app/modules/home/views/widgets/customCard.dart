import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final VoidCallback onPress;
  const CustomCard({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.network(
                    'https://th.bing.com/th/id/R.829843c130c948d4fbb835dae965a5da?rik=LCpFbdcAeWDZ8w&riu=http%3a%2f%2fwallpapercave.com%2fwp%2ffAwVCh3.jpg&ehk=lGN4CaEuFMjMiZTZ2nF9id7MRRJ3e1tiWELDbLGorPE%3d&risl=&pid=ImgRaw&r=0',
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ini berita',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Indonesia', style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 16),
                      Text('1h ago', style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 16),
                      Row(
                        children: [
                          Icon(Icons.comment, size: 16, color: Colors.grey),
                          SizedBox(width: 4),
                          Text('250', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
