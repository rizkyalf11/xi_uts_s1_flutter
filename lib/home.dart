// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pts/cart.dart';
import 'package:pts/detail.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _btnKategoriAktif = 'Semua';
  var _currIndexBottomNav = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leadingWidth: 1000,
        leading: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 24),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 1, 
                          color: Colors.white.withOpacity(0)
                        )
                      ),
                      hintText: "Mau cari apa?",
                      prefixIcon: Icon(
                        Iconsax.search_normal,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Color(0xfff2f2f7),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                          width: 1, color: Colors.black.withOpacity(0)),
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  // color: Colors.red,
                    child: Row(
                  children: [
                    Icon(Iconsax.notification, color: Colors.black, size: 30,),
                    SizedBox(width: 12),
                    GestureDetector(
                      child: Icon(Iconsax.bag, color: Colors.black, size: 30,),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
                      },
                    ),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                      child: Image.asset('assets/Banner.png'),
                      margin: EdgeInsets.only(top: 16, bottom: 28)),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Kategori',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xff292D32))),
                          Text('Lihat Semua',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff00b14f)))
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16, bottom: 24),
                        height: 42,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _BtnKategori('Semua'),
                            _BtnKategori('Kemeja'),
                            _BtnKategori('Sepatu'),
                            _BtnKategori('Aksesoris'),
                          ],
                        ),
                      )
                    ],
                  ),
                  _RowCard(
                      'p1.png',
                      'p2.png',
                      'Batik Pria Lengan Panjang',
                      'New Balance 992 Grey Original',
                      'Rp199.900',
                      'Rp1.240.000'),
                  _RowCard(
                      'p3.png',
                      'p4.png',
                      'Skinny Jeans Dark Blue Wanita',
                      'Kacamata Baca Anti Radiasi Blue Ray',
                      'Rp379.900',
                      'Rp125.000'),
                  _RowCard(
                      'p5.png',
                      'p6.png',
                      'Kemeja Pria Polos Lengan Pendek Oxford',
                      'Human Greatness Hoodie Hitam',
                      'Rp119.000',
                      'Rp229.000')
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currIndexBottomNav,
        selectedItemColor: Color(0xff00b14f),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.home,
                color: Colors.black,
              ),
              label: 'Beranda',
              activeIcon: Icon(Iconsax.home, color: Color(0xff00b14f))),
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.heart,
                color: Colors.black,
              ),
              label: 'Favorit',
              activeIcon: Icon(Iconsax.heart, color: Color(0xff00b14f))),
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.task_square,
                color: Colors.black,
              ),
              label: 'Transaksi',
              activeIcon: Icon(Iconsax.task_square, color: Color(0xff00b14f))),
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.profile_circle,
                color: Colors.black,
              ),
              label: 'Profile',
              activeIcon:
                  Icon(Iconsax.profile_circle, color: Color(0xff00b14f))),
        ],
        onTap: (value) {
          setState(() {
            _currIndexBottomNav = value;
          });
        },
      ),
    );
  }

  Container _RowCard(String url1, String url2, String title1, String title2,
      String price1, String price2) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Container(
              width: 172,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/$url1'),
                  SizedBox(height: 12),
                  Text(title1,
                      style: GoogleFonts.inter(
                          fontSize: 16, color: Color(0xff292d32))),
                  SizedBox(height: 12),
                  Text(price1,
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          color: Color(0xff292d32),
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ),
          Container(
            width: 172,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/$url2'),
                SizedBox(height: 12),
                Text(title2,
                    style: GoogleFonts.inter(
                        fontSize: 16, color: Color(0xff292d32))),
                SizedBox(height: 12),
                Text(price2,
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Color(0xff292d32),
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector _BtnKategori(String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _btnKategoriAktif = title;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        width: 100,
        height: 42,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xfff2f2f7)),
            borderRadius: BorderRadius.circular(8),
            color: _btnKategoriAktif == title
                ? Color(0xff00b14f)
                : Colors.white.withOpacity(0)),
        child: Center(
          child: Text(title,
              style: GoogleFonts.inter(
                  fontSize: 16,
                  color: _btnKategoriAktif == title
                      ? Colors.white
                      : Color(0xff292d32).withOpacity(0.7))),
        ),
      ),
    );
  }
}
