import 'dart:async';

import 'package:github_action_context/github_action_context.dart';

FutureOr<void> checkIssueCommenterPermission() {
  final triggerUser = context.actor;
}
