import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kontak Saya',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Header Bagian Atas
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: const [
                  Icon(Icons.mark_email_unread_outlined, size: 60, color: Colors.white),
                  SizedBox(height: 15),
                  Text(
                    'Mari Terhubung!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Punya ide proyek, tawaran kolaborasi, atau sekadar ingin bertanya? Jangan ragu untuk mengirim pesan.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.white70, height: 1.4),
                  ),
                ],
              ),
            ),

            // 2. Konten Utama (Info & Form)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kartu Informasi Cepat
                  Row(
                    children: [
                      Expanded(
                        child: _buildInfoCard(
                          Icons.email, 
                          'Email', 
                          'alvarositanggang5@gmail.com'
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: _buildInfoCard(
                          Icons.location_on, 
                          'Lokasi', 
                          'Jakarta, Indonesia'
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),

                  // Judul Form
                  const Text(
                    'Kirim Pesan Langsung',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Form Input
                  _buildTextField(Icons.person, 'Nama Lengkap'),
                  const SizedBox(height: 15),
                  _buildTextField(Icons.email, 'Alamat Email'),
                  const SizedBox(height: 15),
                  _buildTextField(
                    Icons.message, 
                    'Tulis pesan Anda di sini...', 
                    maxLines: 4
                  ),
                  const SizedBox(height: 25),

                  // Tombol Kirim
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      icon: const Icon(Icons.send, color: Colors.white, size: 20),
                      label: const Text(
                        'Kirim Pesan',
                        style: TextStyle(
                          fontSize: 16, 
                          color: Colors.white, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: () {
                        // Simulasi aksi saat tombol ditekan
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Pesan Anda berhasil dikirim!'),
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.green,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget: Kartu Info Kontak
  Widget _buildInfoCard(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 2,
      shadowColor: Colors.blueGrey.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 28, color: Colors.blueGrey),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 16, 
                color: Colors.black87
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black54, 
                fontSize: 13
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget: Text Field (Kotak Input)
  Widget _buildTextField(IconData icon, String hint, {int maxLines = 1}) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey.shade400),
        prefixIcon: maxLines == 1 
            ? Icon(icon, color: Colors.blueGrey) 
            : Padding(
                padding: const EdgeInsets.only(bottom: 65),
                child: Icon(icon, color: Colors.blueGrey),
              ), // Menyesuaikan posisi icon jika multiline
        filled: true,
        fillColor: Colors.grey.shade50,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20, 
          vertical: 16
        ),
      ),
    );
  }
}