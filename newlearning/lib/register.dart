import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        backgroundColor: Color(0xFFA2362B),
        body: Container(
            padding: EdgeInsets.only(top: 30, left: 40, right: 40),

            child: ListView(
              children: <Widget>[
                SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset("assets/logo.png")),
                SizedBox(
                    width: 335 * fem,
                    height: 40 * fem,
                    child: Text(
                        'K O M P A S',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Adamina',
                          fontSize: 33 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3619999356 * ffem / fem,
                          letterSpacing: 0.0703846142 * fem,
                          color: Color(0xffed905f),
                        ))),
                Container(
                  // autogroupaafo8mT (KYj81nQLNmEDC263oUAafo)
                  margin: EdgeInsets.fromLTRB(34*fem, 0*fem, 35*fem, 12*fem),
                  width: double.infinity,
                  height: 61*fem,
                  child: Stack(
                    children: [
                    Positioned(
                    // registro3Nd (212:96)
                    left: 0*fem,
                    top: 30*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 252*fem,
                          height: 61*fem,
                          child: Text(
                            'REGISTRO',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont (
                              'Adamina',
                              fontSize: 30*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3619999886*ffem/fem,
                              letterSpacing: 0.0703846142*fem,
                              color: Color(0xff581610),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                    ]
                )
        ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Insira um User',
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor:Colors.redAccent,
                    hintStyle: GoogleFonts.getFont(
                      'Adamina',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.3619999886*ffem/fem,
                      letterSpacing: 0.0703846142*fem,
                      color: Color(0x7f58150f),),
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10*fem),
                    borderSide: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                    ),
                  ),

                  )
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Insira seu email',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.email_rounded),
                      prefixIconColor:Colors.redAccent,
                      hintStyle: GoogleFonts.getFont(
                        'Adamina',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3619999886*ffem/fem,
                        letterSpacing: 0.0703846142*fem,
                        color: Color(0x7f58150f),),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10*fem),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    obscureText: true,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      hintText: 'Insira sua senha',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor:Colors.redAccent,
                      hintStyle: GoogleFonts.getFont(
                        'Adamina',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3619999886*ffem/fem,
                        letterSpacing: 0.0703846142*fem,
                        color: Color(0x7f58150f),),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10*fem),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    obscureText: true,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      hintText: 'Confirme sua senha',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor:Colors.redAccent,
                      hintStyle: GoogleFonts.getFont(
                        'Adamina',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3619999886*ffem/fem,
                        letterSpacing: 0.0703846142*fem,
                        color: Color(0x7f58150f),),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10*fem),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => {},
                  child: Ink(
                    // botoG5b (212:111)
                    padding: EdgeInsets.fromLTRB(128*fem, 10*fem, 85.99*fem, 7*fem),
                    width: double.infinity,
                    height: 51*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff581610),
                      borderRadius: BorderRadius.circular(20*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Text(
                      'Entre',
                      style: GoogleFonts.getFont (
                        'Inter',
                        fontSize: 25*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2102272797*ffem/fem,
                        color: Color(0xffed905f),
                      ),
                    ),
                  ),
                ),
              ],
            )
        )
            );
  }

}
