// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last, non_constant_identifier_names


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  var _isLike = true;
  String _isSize = '39';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Detail Produk', style: GoogleFonts.inter(
          color: Color(0xff292d32),
          fontSize: 18,
          fontWeight: FontWeight.w500
        )),
        leading: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Icon(Iconsax.arrow_left, color: Colors.black),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isLike = !_isLike;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 0),
              // child: Icon(Iconsax.heart, color: Colors.black,),
              child: _isLike? Image.asset('assets/merah.png') : Image.asset('assets/biasa.png'),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24, top: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 24),
                    child: Image.asset('assets/big.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text('New Balance 992 Grey Original', style: GoogleFonts.inter(
                      fontSize: 22,
                      color: Color(0xff292d32),
                      fontWeight: FontWeight.w500
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/start.png'),
                        Text(' 4.8', style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600
                        )),
                        Text(' (102) | 67 ulasan', style: GoogleFonts.inter(
                          color: Color(0xff292d32).withOpacity(.7)
                        )),
                      ],
                    ),
                  ),

                  ReadMoreText(
                    "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin. These men's fashion sneakers have a pigskin. These men's fashion sneakers have a pigskin",
                    trimLines: 4,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Baca selengkapnya',
                    trimExpandedText: 'Lebih sedikit',
                    style: GoogleFonts.inter(fontSize: 16, color: Color(0xff292d32).withOpacity(.7)),
                    moreStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff00b14f)),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Text('Pilih Ukuran', style: GoogleFonts.inter(
                        fontSize: 22,
                        color: Color(0xff292d32),
                        fontWeight: FontWeight.w600
                    )),
                  ),

                  Container(
                    height: 50,
                    margin: EdgeInsets.only(bottom: 16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _BtnSIze('39'),
                        _BtnSIze('40'),
                        _BtnSIze('41'),
                        _BtnSIze('42'),
                        _BtnSIze('43'),
                        _BtnSIze('44'),
                      ],
                    ),
                  )
                  
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(right: 24, left: 24),
        color: Colors.white,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Rp1.240.000', style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Color(0xff292d32)
            )),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xff00b14f),
                borderRadius: BorderRadius.circular(8) 
              ),
              child: TextButton(
                onPressed: () {}, 
                child: Text('Tambah Keranjang', style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ))
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector _BtnSIze(String berapa) {
    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSize = berapa;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 12),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: _isSize == berapa ? Color(0xff00b14f).withOpacity(.1) : Colors.white.withOpacity(0),
                          border: _isSize == berapa ? Border.all(width: 1, color: Color(0xff00b14f)) : Border.all(width: 1, color: Color.fromARGB(255, 224, 224, 227))
                        ),
                        child: Center(
                          child: Text(berapa, style: GoogleFonts.inter(
                            fontSize: 16,
                            color: Color(0xff292d32).withOpacity(.7)
                          )),
                        ),
                      ),
                    );
  }
}