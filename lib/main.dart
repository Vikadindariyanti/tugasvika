import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  Coba({super.key});

  Widget animasi({
    required Widget child,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 700),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // BACKGROUND BIRU PASTEL
        backgroundColor: Color(0xffc6f9d7),

        appBar: AppBar(
          title: Text('Tumpak Sewu'),
          backgroundColor: Color(0xffc6f9d7),
          foregroundColor: Color(0xff548963),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              // =========================
              // FOTO
              // =========================
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/tumpaksewu.jpg',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),

              // =========================
              // JUDUL
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sejarah Singkat Tumpak Sewu',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff548963),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // =========================
              // SEJARAH
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Text(
                    'Air Terjun Tumpak Sewu atau disebut juga Coban Sewu adalah air terjun yang terletak di perbatasan Kabupaten Lumajang dengan Kabupaten Malang, Provinsi Jawa Timur.'
                    'Air terjun dengan ketinggian sekitar 120 meter memiliki visual yang menyerupai tirai sehingga termasuk dalam tipe air terjun tiered. Aliran Tumpak Sewu jatuh masuk kedalam sebuah lembah yang memanjang ke selatan yang berada di ketinggian sekitar 450-500 mdpl. '
                    'Air Terjun Tumpak Sewu merupakan aliran hulu dari Kali Glidik yang berasal dari selatan kawasan lereng Gunung Semeru. Aliran Kali Glidik dari kawasan Tumpak Sewu bergabung dengan Kali Besukcukit di 8.261°S 112.916°E selatan Sidomulyo hingga bermuara di pesisir selatan perbatasan Malang-Lumajang, wilayah perairan Samudera Hindia./n/n '
                    'Kawasan Air Terjun Tumpak Sewu sendiri terbentuk akibat aktivitas vulkanik Gunung Semeru yang menghasilkan endapan lava dan material piroklastik, sehingga membentuk tebing melengkung yang menjadi ciri khas visual air terjun ini. '
                    'Tumpak Sewu juga berkembang sebagai destinasi ekowisata unggulan Jawa Timur yang menarik wisatawan domestik maupun mancanegara. Kawasan sekitar air terjun ditutupi oleh vegetasi hutan tropis yang relatif lebat, yang berperan penting dalam menjaga kestabilan tanah, siklus hidrologi, serta keanekaragaman hayati lokal. '
                    'Aktivitas pariwisata di kawasan Tumpak Sewu dikelola dengan pendekatan berbasis masyarakat, di mana peran warga lokal cukup dominan dalam pengelolaan akses, jasa pemandu, dan fasilitas pendukung. Adanya peningkatan kunjungan wisata juga menimbulkan tantangan terkait konservasi lingkungan, keselamatan pengunjung, dan keberlanjutan ekosistem sungai di kawasan hilir./n/n '
                    'tidak hanya menjadi tempat untuk menikmati air terjun, '
                    'tetapi juga menyediakan berbagai aktivitas dan tempat '
                    'menarik bagi pengunjung. Keindahan alam dan udara yang '
                    'sejuk menjadi salah satu daya tarik utama Tumpak Sewu.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xff548963),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),

              // =========================
              // LOKASI DAN KONTAK
              // =========================
              animasi(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffdef6e5),
                    border: Border.all(
                      color: Color(0xff305539),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // =========================
                      // LOKASI
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff548963),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Color(0xff548963),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Tumpak Sewu Waterfall\n'
                                    'Desa Sidomulyo,\n'
                                    'Kecamatan Pronojiwo,\n'
                                    'Kabupaten Lumajang,\n'
                                    'Jawa Timur',
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Color(0xff548963),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // =========================
                      // GARIS PEMISAH
                      // =========================
                      Container(
                        height: 150,
                        width: 1,
                        color: Color(0xff548963),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                      ),

                      // =========================
                      // CONTACT
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Saya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff548963),
                              ),
                            ),

                            SizedBox(height: 12),

                            // WHATSAPP
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xff548963),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '083851357725',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff548963),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 12),

                            // GARIS PEMISAH
                            Container(
                              height: 1,
                              color: Color(0xff305539),
                            ),

                            SizedBox(height: 12),

                            // EMAIL
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xff548963),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'vdinda67@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff548963),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
