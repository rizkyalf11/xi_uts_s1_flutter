// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_string_escapes, unnecessary_string_interpolations, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

String formatRupiah(int harga) {
  final currencyFormat = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
  return currencyFormat.format(harga);
}

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  var _P1Count = 1;
  int _P1Price = 1240000;

  var _P2Count = 1;
  int _P2Price = 450000;
  
  var _P3Count = 1;
  int _P3Price = 165000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Keranjang', style: GoogleFonts.inter(
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
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Icon(Icons.more_horiz, color: Colors.black,),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 24, left: 24, top: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    height: 110,
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f7),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Iconsax.location),
                                SizedBox(width: 12),
                                Text('Dikirim ke', style: GoogleFonts.inter(
                                  color: Color(0xff292d32).withOpacity(.7)
                                ))
                              ],
                            ),
                            Text('Ubah', style: GoogleFonts.inter(
                              color: Color(0xff00b14f)
                            ))
                          ],
                        ),
                        SizedBox(height: 12),
                        Container(
                          margin: EdgeInsets.only(left: 32),
                          child: Text('Jakarta, Cibubur, Kota Wisata\n Madrid No 23', style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff292d32)
                          )),
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 24, bottom: 24),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/p2.png', width: 100),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('New Balance 992 ...', style: GoogleFonts.inter(
                                      fontSize: 16,
                                      color: Color(0xff292d32)
                                    )),
                                    Text('40', style: GoogleFonts.inter(
                                      color: Color(0xff292d32).withOpacity(.7),
                                      fontSize: 12
                                    )),
                                  ],
                                ),
                                SizedBox(height: 24),
                                Text('${formatRupiah(_P1Price * _P1Count)}', style: GoogleFonts.inter(
                                  color: Color(0xff292d32),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16
                                ))
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 4, right: 4),
                              width: 90,
                              height: 45,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Color.fromARGB(255, 224, 224, 227)),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    child: Icon(Iconsax.minus),
                                    onTap: () {
                                      if(_P1Count > 1) {
                                        setState(() {
                                          _P1Count -= 1;
                                        });
                                      }
                                    },
                                  ),
                                  Text('$_P1Count', style: GoogleFonts.inter(
                                    fontSize: 16
                                  )),
                                  GestureDetector(
                                    child: Icon(Iconsax.add, color: Color(0xff00b14f)),
                                    onTap: () {
                                      setState(() {
                                        _P1Count += 1;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(bottom: 24),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/p4.png', width: 100),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Kacamata Baca ...', style: GoogleFonts.inter(
                                      fontSize: 16,
                                      color: Color(0xff292d32)
                                    )),
                                    Text('-2, Hitam', style: GoogleFonts.inter(
                                      color: Color(0xff292d32).withOpacity(.7),
                                      fontSize: 12
                                    )),
                                  ],
                                ),
                                SizedBox(height: 24),
                                Text('${formatRupiah(_P2Price * _P2Count)}', style: GoogleFonts.inter(
                                  color: Color(0xff292d32),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16
                                ))
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 4, right: 4),
                              width: 90,
                              height: 45,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Color.fromARGB(255, 224, 224, 227)),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    child: Icon(Iconsax.minus),
                                    onTap: () {
                                      if(_P2Count > 1) {
                                        setState(() {
                                          _P2Count -= 1;
                                        });
                                      }
                                    },
                                  ),
                                  Text('$_P2Count', style: GoogleFonts.inter(
                                    fontSize: 16
                                  )),
                                  GestureDetector(
                                    child: Icon(Iconsax.add, color: Color(0xff00b14f)),
                                    onTap: () {
                                      setState(() {
                                        _P2Count += 1;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(bottom: 96),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/p6.png', width: 100),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Human Greatness ...', style: GoogleFonts.inter(
                                      fontSize: 16,
                                      color: Color(0xff292d32)
                                    )),
                                    Text('XL, Hitam', style: GoogleFonts.inter(
                                      color: Color(0xff292d32).withOpacity(.7),
                                      fontSize: 12
                                    )),
                                  ],
                                ),
                                SizedBox(height: 24),
                                Text('${formatRupiah(_P3Price* _P3Count)}', style: GoogleFonts.inter(
                                  color: Color(0xff292d32),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16
                                ))
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 4, right: 4),
                              width: 90,
                              height: 45,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Color.fromARGB(255, 224, 224, 227)),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    child: Icon(Iconsax.minus),
                                    onTap: () {
                                      if(_P3Count > 1) {
                                        setState(() {
                                          _P3Count -= 1;
                                        });
                                      }
                                    },
                                  ),
                                  Text('$_P3Count', style: GoogleFonts.inter(
                                    fontSize: 16
                                  )),
                                  GestureDetector(
                                    child: Icon(Iconsax.add, color: Color(0xff00b14f)),
                                    onTap: () {
                                      setState(() {
                                        _P3Count += 1;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 220,
        // color: Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal', style: GoogleFonts.inter(
                            fontSize: 16,
                            color: Color(0xff292d32).withOpacity(.7)
                          )),
                          Text('${formatRupiah((_P1Price * _P1Count) + (_P2Price * _P2Count) + (_P3Price * _P3Count))}', style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff292d32)
                          ))
                        ],
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Ongkir', style: GoogleFonts.inter(
                            fontSize: 16,
                            color: Color(0xff292d32).withOpacity(.7)
                          )),
                          Text('Rp13.000', style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff292d32)
                          ))
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 24),
                        child: Image.asset('assets/line.png')
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total', style: GoogleFonts.inter(
                            fontSize: 16,
                            color: Color(0xff292d32).withOpacity(.7)
                          )),
                          Text('${formatRupiah((_P1Price * _P1Count) + (_P2Price * _P2Count) + (_P3Price * _P3Count) + 13000)}', style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff292d32)
                          )),
                        ],
                      ),
                          Container(
                            margin: EdgeInsets.only(top: 24, bottom: 17),
                            height: 45,
                            width: double.infinity,
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
}