import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormSeries extends StatelessWidget {
  const FormSeries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
        backgroundColor: const Color(0xFF1E1E1E),

        body: Container(
        padding: const EdgeInsets.only(top: 30, left: 40, right: 40),

            child: ListView(
                children: <Widget>[

                  SizedBox(
                      width: 335 * fem,
                      height: 40 * fem,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'K',
                                style: GoogleFonts.getFont(
                                    'Inter',
                                    fontSize: 18 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3619999356 * ffem / fem,
                                    letterSpacing: 0.0703846142 * fem,
                                    color: const Color(0xffa2362b))),
                            TextSpan(text: 'OMPAS',
                                style: GoogleFonts.getFont(
                                    'Inter',
                                    fontSize: 18 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3619999356 * ffem / fem,
                                    letterSpacing: 0.0703846142 * fem,
                                    color: const Color(0xffffffff)
                                )),],),)),

                  SizedBox(
                      width: 335 * fem,
                      height: 40 * fem,
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Séries',
                                style: GoogleFonts.getFont(
                                    'Adamina',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3619999356 * ffem / fem,
                                letterSpacing: 0.0703846142 * fem,
                                color: const Color(0xffa2362b))),
                            TextSpan(
                                text: '                                                        2 de 3',
                                style: GoogleFonts.getFont(
                                  'Adamina',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3619999356 * ffem / fem,
                                    letterSpacing: 0.0703846142 * fem,
                                    color: const Color(0xffa2362b)
                                )),],),)),

                  SizedBox(
                      width: 335 * fem,
                      height: 40 * fem,
                      child: Text(
                          'Nos diga 4 ou mais dos seus gêneros de séries favoritos!',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3619999356 * ffem / fem,
                            letterSpacing: 0.0703846142 * fem,
                            color: const Color(0xffffffff),
                          ))),

                ])));}}

