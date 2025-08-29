import '/flutter_flow/flutter_flow_util.dart';
import 'profileand_p_d_p_widget.dart' show ProfileandPDPWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ProfileandPDPModel extends FlutterFlowModel<ProfileandPDPWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
  }
}
