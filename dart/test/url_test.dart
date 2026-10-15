import 'package:aiautocropper_url_tools/aiautocropper_url_tools.dart';
void main() {
  final urls = Urls();
  if (urls.homeUrl() != 'https://aiautocropper.com/') throw StateError('home');
  if (urls.workflow_url('crop-scanned-photos') != 'https://aiautocropper.com/crop-scanned-photos') throw StateError('extra');
}
