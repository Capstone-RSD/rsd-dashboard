import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'courses_model.dart';
export 'courses_model.dart';

class CoursesWidget extends StatefulWidget {
  const CoursesWidget({Key? key}) : super(key: key);

  @override
  _CoursesWidgetState createState() => _CoursesWidgetState();
}

class _CoursesWidgetState extends State<CoursesWidget> {
  late CoursesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoursesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              wrapWithModel(
                model: _model.sideBarNavModel,
                updateCallback: () => setState(() {}),
                child: SideBarNavWidget(
                  oneBG: FlutterFlowTheme.of(context).secondaryBackground,
                  oneIcon: Icon(
                    Icons.bar_chart_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  twoBG: FlutterFlowTheme.of(context).primaryBackground,
                  twoIcon: Icon(
                    Icons.school_outlined,
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                  threeColor: FlutterFlowTheme.of(context).secondaryBackground,
                  threeIcon: Icon(
                    Icons.account_circle_outlined,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                      ),
                    ),
                  FlutterFlowWebView(
                    url:
                        'https://firebasestorage.googleapis.com/v0/b/rss-client-21d3b.appspot.com/o/map-markup%2Fneo_map.html?alt=media&token=9bc5d92a-fe6a-4296-85b1-31e78d1fa606',
                    bypass: true,
                    height: 500.0,
                    verticalScroll: false,
                    horizontalScroll: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
