import 'package:flutter/material.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data keahlian beserta persentasenya
    final List<Map<String, dynamic>> skills = [
      {'name': 'HTML & CSS', 'level': 0.85, 'category': 'Web Development'},
      {'name': 'JavaScript', 'level': 0.75, 'category': 'Web Development'},
      {'name': 'PHP', 'level': 0.70, 'category': 'Web Development'},
      {'name': 'Flutter', 'level': 0.80, 'category': 'Mobile Development'},
      {'name': 'C#', 'level': 0.80, 'category': 'Software Programming'},
      {'name': 'Java', 'level': 0.65, 'category': 'Software Programming'},
      {'name': 'SQL', 'level': 0.75, 'category': 'Database Management'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Keahlian & Teknologi',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Lengkung (Konsisten dengan halaman lain)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: const Column(
                children: [
                  Icon(Icons.psychology, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    'Kompetensi Teknis',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Daftar bahasa pemrograman dan teknologi yang dikuasai.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Daftar Skill
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  final skill = skills[index];
                  return _buildSkillCard(
                    skill['name'], 
                    skill['level'], 
                    skill['category']
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget Kartu Skill dengan Progress Bar
  Widget _buildSkillCard(String skillName, double progress, String category) {
    int percentage = (progress * 100).toInt();

    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  skillName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  '$percentage%',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              category,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            // Progress Bar
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 8,
                backgroundColor: Colors.grey.shade200,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}