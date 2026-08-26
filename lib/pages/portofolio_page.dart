import 'package:flutter/material.dart';

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({super.key});

  final List<Map<String, dynamic>> portofolio = const [
    {
      'judul': 'Website Company Profile',
      'kategori': 'Website Development',
      'deskripsi':
          'Pembuatan website profil perusahaan yang modern dan responsif.',
      'icon': Icons.language,
    },
    {
      'judul': 'Aplikasi Kasir',
      'kategori': 'Mobile Application',
      'deskripsi':
          'Aplikasi kasir untuk membantu proses transaksi dan pencatatan penjualan.',
      'icon': Icons.point_of_sale,
    },
    {
      'judul': 'Sistem Manajemen Sekolah',
      'kategori': 'Web Application',
      'deskripsi':
          'Sistem untuk mengelola data siswa, guru, kelas, dan informasi sekolah.',
      'icon': Icons.school,
    },
    {
      'judul': 'Desain Branding Perusahaan',
      'kategori': 'UI/UX & Design',
      'deskripsi':
          'Pembuatan identitas visual dan desain digital untuk perusahaan.',
      'icon': Icons.brush,
    },
    {
      'judul': 'Aplikasi Pemesanan',
      'kategori': 'Mobile Application',
      'deskripsi':
          'Aplikasi untuk memudahkan pelanggan melakukan pemesanan layanan.',
      'icon': Icons.shopping_cart,
    },
    {
      'judul': 'Sistem Inventaris',
      'kategori': 'Management System',
      'deskripsi':
          'Sistem pencatatan dan pengelolaan barang secara digital.',
      'icon': Icons.inventory_2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F2F8),
      appBar: AppBar(
        title: const Text(
          'Portofolio Kami',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF159EAE),
                Color(0xFF4656A3),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF159EAE),
                  Color(0xFF4656A3),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Column(
              children: [
                Icon(
                  Icons.work_outline,
                  color: Colors.white,
                  size: 55,
                ),
                SizedBox(height: 12),
                Text(
                  'Portofolio Perusahaan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Beberapa proyek dan hasil pekerjaan terbaik kami',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: portofolio.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final item = portofolio[index];

                return InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    _showDetail(context, item);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                       boxShadow: [
                        const BoxShadow(
                          color: Color(0xFFDDDDDD),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 85,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF159EAE),
                                  Color(0xFF4656A3),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(
                              item['icon'],
                              color: Colors.white,
                              size: 42,
                            ),
                          ),

                          const SizedBox(height: 12),

                          Text(
                            item['judul'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF333333),
                            ),
                          ),

                          const SizedBox(height: 6),

                          Text(
                            item['kategori'],
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF4656A3),
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const Spacer(),

                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Lihat Detail',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF159EAE),
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Color(0xFF159EAE),
                              ),
                            ],
                          ),
                        ],
                      ),
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

  void _showDetail(BuildContext context, Map<String, dynamic> item) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(25),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    const BoxShadow(
                      color: Color(0xFFDDDDDD),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              Text(
                item['judul'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                item['kategori'],
                style: const TextStyle(
                  color: Color(0xFF4656A3),
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                item['deskripsi'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}