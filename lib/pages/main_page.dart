import 'package:flutter/material.dart';
import 'package:projectprofil/pages/galery.dart';
import 'package:projectprofil/pages/kontak_page.dart';
import 'package:projectprofil/pages/layanan_page.dart';
import 'package:projectprofil/pages/portofolio_page.dart';

import 'about_page.dart';




class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perusahaan Maple",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        foregroundColor: Colors.amberAccent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 18, 155, 155), Colors.indigo],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Container(
            width: double.infinity,
            padding: EdgeInsets.all(35),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.indigo], 
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight, 
                ),
              ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/maple.png',
                  width: 100,
                  height: 100
                ),
                SizedBox(height: 30),
                Text("Profil Perusahaan",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                ),
              ],
            ),
          ),
                const SizedBox(height: 20,),

                //Tombol About
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20
                    ),
                    child: ElevatedButton.icon(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>const AboutPage(),
                        ),
                        );
                      },
                      icon: const Icon(Icons.business),
                      label: const Text("Tentang Perusahaan"),
                    ),
                  )
                ),
                 SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20
                    ),
                    child: ElevatedButton.icon(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>const GalleryPage(),
                        ),
                        );
                      },
                      icon: const Icon(Icons.photo_library),
                      label: const Text("Gallery Perusahaan"),
                    ),
                  )
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20
                    ),
                    child: ElevatedButton.icon(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>const PortofolioPage(),
                        ),
                        );
                      },
                      icon: const Icon(Icons.work),
                      label: const Text("Portofolio"),
                    ),
                  )
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20
                    ),
                    child: ElevatedButton.icon(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>const ContactPage(),
                        ),
                        );
                      },
                      icon: const Icon(Icons.call),
                      label: const Text("Hubungi Kami"),
                    ),
                  )
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20
                    ),
                    child: ElevatedButton.icon(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>const LayananPage(),
                        ),
                        );
                      },
                      icon: const Icon(Icons.design_services),
                      label: const Text("Layanan Kami"),
                    ),
                  )
                ),
          ],
        ),
      )
    );
  }
}