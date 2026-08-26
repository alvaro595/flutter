import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  Future<void>_openInstagram()async{
    final Uri url = Uri.parse(
      "http:www.instagram.com/smkn64jakarta",
    );
    await launchUrl(url,
    mode: LaunchMode.externalApplication
    );
  }
  Future<void>_openYoutube()async{
    final Uri url = Uri.parse(
      "https://www.youtube.com/@PodcastGenznyocot",
    );
    await launchUrl(url,
    mode: LaunchMode.externalApplication
    );
  }
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontak Kami", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        foregroundColor: Colors.amberAccent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.indigo],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.location_on,
                        color: Colors.red,),
                        title: const Text("Alamat Perusahaan"),
                        subtitle: const Text("Jl. Graha Teknologi No. 7, RT 011 RW 003 Pinang Ranti Jakarta Timur"),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.green,),
                       title: const Text("Nomor Telepon"),
                      subtitle: const Text("+62 858-9002-1536"),
                    ),
                    const Divider(),
                     ListTile(
                      leading: const Icon(
                        Icons.email,
                        color: Colors.blue,),
                        title: const Text("Email"),
                        subtitle: const Text("alvarositanggang5@gmail.com"),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.instagram, color: Colors.pink,
                        ),
                        title: const Text("Instagram"),
                        subtitle: const Text("www.smk64-jkt"),
                        onTap: _openInstagram
                    ),
                    const Divider(),
                     ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.youtube, color: Colors.redAccent,
                        ),
                        title: const Text("Youtube"),
                        subtitle: const Text("www.youtube.com/@PodcastGenznyocot"),
                        onTap: _openYoutube
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.public,
                        color: Colors.red,),
                        title: const Text("Website Perusahaan"),
                        subtitle: const Text("www.smk64-jkt"),
                        onTap: () async{
                          final url= Uri.parse("https://smkn64-jkt.sch.id",);
                          await launchUrl(url,
                          mode: LaunchMode.externalApplication,
                          );
                        }
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}