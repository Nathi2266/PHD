import '/flutter_flow/flutter_flow_util.dart';
import 'goal_workspace_widget.dart' show GoalWorkspaceWidget;
import 'package:flutter/material.dart';

class GoalWorkspaceModel extends FlutterFlowModel<GoalWorkspaceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
