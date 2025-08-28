import '/flutter_flow/flutter_flow_util.dart';
import 'repository_audit_widget.dart' show RepositoryAuditWidget;
import 'package:flutter/material.dart';

class RepositoryAuditModel extends FlutterFlowModel<RepositoryAuditWidget> {
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
