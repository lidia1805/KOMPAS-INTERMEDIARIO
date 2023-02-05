import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                  child: Text(
                    'Seja bem-vindo ao',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Adamina',
                      fontSize: 28 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.3619999356 * ffem / fem,
                      letterSpacing: 0.0703846142 * fem,
                      color: Color(0xffed905f),
                    ),
                  ),
                ),
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
                            top: 20*fem,
                            child: Center(
                              child: Align(
                                child: SizedBox(
                                  width: 252*fem,
                                  height: 50*fem,
                                  child: Text(
                                    'LOGIN',
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
                  height: 10,
                ),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
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
                      hintText: 'Senha',
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
                  height: 5,
                ),
                SizedBox(
                  child: Text(
                    'Esqueceu sua senha?',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.getFont(
                      'Adamina',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.3619999356 * ffem / fem,
                      letterSpacing: 0.0703846142 * fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
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
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () => {},
                  child: Ink(
                    // botoG5b (212:111)
                    padding: EdgeInsets.fromLTRB(
                    25* fem, 10 * fem, 31.99 * fem, 11 * fem),
                    width: double.infinity,
                    height: 55 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // googleqzD (212:64)
                            margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 8*fem, 4*fem),
                            width: 45*fem,
                            height: 25*fem,
                            child: Image.asset(
                              'assets/google.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            'Fazer login com o Google',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontSize: 17 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272797 * ffem / fem,
                              color: Color(0xff858281),
                            ),
                          ),
                        ]
                    ),
                  )
                  ),

              ],
            )
        )
    );
  }

}
