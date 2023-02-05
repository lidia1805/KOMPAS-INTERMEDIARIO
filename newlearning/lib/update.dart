import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newlearning/routes/app_routes.dart';
import 'package:newlearning/provider/users.dart';
import 'package:newlearning/user.dart';
import 'package:provider/provider.dart';


class Update extends StatelessWidget {
  Update({Key? key}) : super(key: key);
  final _form = GlobalKey<FormState>();
  final Map<String?, String?>_formData = {};

  void _loadFormData(User user){
    if  (user!= null){
    _formData['id'] = user.id ;
    _formData['name'] = user.name ;
    _formData['email'] = user.email ;
    _formData['password'] = user.password;
    }
  }

  @override
  Widget build(BuildContext context) {
    final  user = ModalRoute.of(context)!.settings.arguments as User;
    _loadFormData(user);

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

            child: Form(
              key: _form,
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
                                      'ALTERAÇÃO',
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
                    initialValue: _formData['name'],
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

                    ),
                    validator: (value ){
                      if (value == null|| value.isEmpty){
                        return 'ocorreu um erro';

                      }
                      return null;
                    },
                      onSaved: (value) => {_formData['name'] = value},


                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: _formData['email'],
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
                    ),
                    validator: (value ){
                      if (value == null|| value.isEmpty){
                        return 'ocorreu um erro';

                      }
                      return null;
                    },
                      onSaved: (value) => {_formData['email'] = value}
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      initialValue: _formData['password'],
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
                      ),
                      validator: (value ) {
                        if (value == null || value.isEmpty) {
                          return 'ocorreu um erro';
                        }
                        return null;
                      },
                      onSaved: (value) {_formData['password'] = value;
            },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      initialValue: _formData['id'],
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
                      ),
                      validator: (value ) {
                        if (value == null || value.isEmpty) {
                          return 'ocorreu um erro';
                        }
                       return null;
                      },
                    onSaved: (value) {_formData['id'] = value;},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: ()  {

                      final isValid =_form.currentState!.validate();
                      if(isValid){
                        _form.currentState!.save();
                        Provider.of<Users>(context, listen: false).put(User(
                            id: _formData['id'] ?? '',
                            name: _formData['name'] ?? '',
                            email: _formData['email'] ?? '',
                            password: _formData['password']??''
                        ),
                        );
                        Navigator.of(context).pushNamed(AppRoutes.USER_LIST);
                      }

                    },
                    child: Ink(
                      // botoG5b (212:111)
                      padding: EdgeInsets.fromLTRB(102*fem, 10*fem, 85.99*fem, 7*fem),
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
                        'Cadastrar',
                        style: GoogleFonts.getFont (
                          'Inter',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2102272797*ffem/fem,
                          color: Color(0xffed905f),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
        )
    );
  }

}