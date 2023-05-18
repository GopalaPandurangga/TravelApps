import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import '../page/productspage.dart';
import 'package:provider/provider.dart';
import '../page/addproduct.dart';
import '../page/homepage.dart';

import '../models/products.dart';


class DetailWidget extends StatefulWidget {
  const DetailWidget({
    Key ? key
  }): super(key: key);

  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State < DetailWidget > {


  final scaffoldKey = GlobalKey < ScaffoldState > ();
  final _unfocusNode = FocusNode();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Container(
                  width: 391.1,
                  height: 251,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: InkWell(
                    onTap: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: '',)));
                    },

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                        'assets/images/firedance.jpeg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                child: Container(
                  width: 447.9,
                  height: 439.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Kecak Fire and Trance Dance',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // Expanded(
                              //   child: Align(
                              //     alignment: AlignmentDirectional(1, 0),
                              //     child: RatingBar.builder(
                              //       onRatingUpdate: (newValue) => setState(
                              //           () => model.ratingBarValue = newValue),
                              //       itemBuilder: (context, index) => Icon(
                              //         Icons.star_rounded,
                              //         color: Color(0xFFFFC800),
                              //       ),
                              //       direction: Axis.horizontal,
                              //       initialRating: model.ratingBarValue ??= 4,
                              //       unratedColor:
                              //           Colors.grey,
                              //       itemCount: 5,
                              //       itemSize: 10,
                              //       glowColor: Color(0xFFFFC800),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFF6C9EAA),
                                size: 24,
                              ),
                              Text(
                                'Desa Taman Kaja Ubud',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                          child: Container(
                            width: 389.4,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Text(
                              'The Sanghyang is a god-inspired trance-dance the function of which is to protect society against evil force and epidemics. It can take several form and the version here presented is the Sanghyang Djaran..... Read more',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Align(
                              alignment: const AlignmentDirectional(0, 0.6),
                                child: Container(
                                  width: 404.3,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(0, 0),
                                              child: Text(
                                                '\$10',
                                                style: TextStyle(
                                                  color: Color(0xFF6C9EAA),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '/person',
                                              style: TextStyle()
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment:
                                          AlignmentDirectional(0.95, -0.9),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 20, 0),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                minimumSize: Size(224, 48),
                                                textStyle: TextStyle(fontSize: 16),
                                                primary: Color(0xFF6C9EAA),
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 0),




                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(54)
                                                )
                                              ),

                                              child: const Text('Book Now'),
                                                onPressed: () {
            // Add your onPressed code here!
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProductAdd(
                  Product(name: "", code: "", category: "", description: ""));
            })).then((value) => {setState(() {})});
          },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                          ),
                        ),
                      ],
                    ),
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