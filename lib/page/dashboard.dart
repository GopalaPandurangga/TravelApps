import '/page/dashboard.dart';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../page/homepage.dart';
import 'package:provider/provider.dart';


class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
 

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  // @override
  // void initState() {
  //   super.initState();
  //   _model = createModel(context, () => DashboardModel());
  // }

  // @override
  // void dispose() {
  //   _model.dispose();

  //   _unfocusNode.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
       backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(child: Column(),
       
      ),
    );
  }
}
