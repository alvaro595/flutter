import 'package:flutter/material.dart';

class TestimoniPage extends StatefulWidget {
  const TestimoniPage({super.key});

  @override
  State<TestimoniPage> createState() => _TestimoniPageState();
}

class _TestimoniPageState extends State<TestimoniPage> {
  // 1. Controller untuk Form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController pesanController = TextEditingController();

  // 2. List untuk menyimpan banyak data testimoni
  List<Map<String, String>> daftarTestimoni = [];

  @override
  void dispose() {
    namaController.dispose();
    pesanController.dispose();
    super.dispose();
  }

  // 3. Fungsi untuk memasukkan data dari form ke dalam List
  void tambahTestimoni() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        // Menambahkan data baru ke dalam daftar
        daftarTestimoni.add({
          'nama': namaController.text,
          'pesan': pesanController.text,
        });
      });
      
      // Kosongkan form setelah berhasil dikirim
      namaController.clear();
      pesanController.clear();
      
      // Munculkan notifikasi sukses (Snackbar)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Testimoni berhasil ditambahkan!'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testimoni Pengguna'),
      ),
      body: Column(
        children: [
          // --- BAGIAN ATAS: FORM INPUT TESTIMONI ---
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: namaController,
                    decoration: const InputDecoration(
                      labelText: 'Nama Anda',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  
                  TextFormField(
                    controller: pesanController,
                    maxLines: 3, // Mengizinkan area teks menjadi lebih lebar (3 baris)
                    decoration: const InputDecoration(
                      labelText: 'Pesan Testimoni',
                      hintText: 'Tuliskan pengalaman Anda...',
                      prefixIcon: Icon(Icons.comment),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Pesan testimoni tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: tambahTestimoni,
                      icon: const Icon(Icons.send),
                      label: const Text('Kirim Testimoni'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          const Divider(thickness: 2), // Garis pembatas
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Apa Kata Mereka?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          
          // --- BAGIAN BAWAH: MENAMPILKAN DAFTAR TESTIMONI ---
          Expanded( // Expanded digunakan agar list mengambil sisa ruang kosong di layar bawah
            child: daftarTestimoni.isEmpty
                ? const Center(
                    child: Text('Belum ada testimoni. Jadilah yang pertama!'),
                  )
                : ListView.builder(
                    itemCount: daftarTestimoni.length,
                    itemBuilder: (context, index) {
                      // Mengambil data secara berurutan
                      final testimoni = daftarTestimoni[index];
                      
                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        elevation: 3,
                        child: ListTile(
                          // Membuat lingkaran berisi huruf depan nama pengguna
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            child: Text(testimoni['nama']![0].toUpperCase()),
                          ),
                          title: Text(
                            testimoni['nama']!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text('"${testimoni['pesan']!}"'),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}