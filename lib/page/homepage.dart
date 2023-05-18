import 'package:scroll_snap_list/scroll_snap_list.dart';


import '../page/detail.dart';


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/rekomendasi.dart';
import '../service/databasehelper2.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key ? key
  }): super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State < HomePageWidget > {
  List < Map < String,
  dynamic >> myData = [];
  final formKey = GlobalKey < FormState > ();

  // This function is used to fetch all data from the database
  void _refreshData() async {
    final data = await DatabaseHelper.getItems();
    setState(() {
      myData = data;
    });
  }





  final scaffoldKey = GlobalKey < ScaffoldState > ();
  final _unfocusNode = FocusNode();





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(


        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(

            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.max,

              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Good Morning',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Gopala Pandurangga',
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 32, 20, 0),
                  child: Container(
                    width: 483.4,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 0, 8),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/tukadmungga.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),

                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(32, 28, 0, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Your Location',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF6C9EAA),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Tukadmungga Village',
                                    textAlign: TextAlign.start,
                                    style:
                                    TextStyle(),
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 32, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100,
                        height: 28.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Icon(
                                Icons.beach_access_sharp,
                                color: Color(0xFFFFC800),
                                size: 24,
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                              child: Text(
                                'Beach',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Container(
                          width: 100,
                          height: 28.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.mountain,
                                  color: Color(0xFF165800),
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                child: Text(
                                  'Mountain',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Container(
                          width: 100,
                          height: 28.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.shoePrints,
                                  color: Color(0xFF6C9EAA),
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                child: Text(
                                  'Show',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 32, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Recomendation',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: SizedBox(

                      height: 350,
                      child: ScrollSnapList(itemBuilder: _buildListItem,
                        itemCount: datarekomendasi.length,
                        itemSize: 300,
                        onItemFocus: (index) {},
                        dynamicItemSize: true,
                      ))

                  ),
                ),

              ],
            ),
          ),

        ),
      ),

    );

  }
  Widget _buildListItem(BuildContext context, int index) {
    Rekomendasi rekomendasi = datarekomendasi[index];
    return SizedBox(

      width: 300,
      height: 350,
      child: InkWell(
        onTap: () async {
          Navigator.push(context, MaterialPageRoute(builder: (cpntext) =>
            const DetailWidget()));
        },
        child: Card(
          elevation: 12,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Column(
                children: [
                  Image.asset(rekomendasi.gambar,
                    width: 300,
                    height: 250,
                    fit: BoxFit.cover, ),
                  const SizedBox(height: 10, ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                          child: Text(rekomendasi.judul, style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600, ), ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                      child: Row(

                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xFF6C9EAA),
                            size: 28,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                              child: Text(rekomendasi.lokasi),
                          ),

                        ],
                      ),
                    )
                ],

              ),
          ),
        ),
      )
    );
  }
}