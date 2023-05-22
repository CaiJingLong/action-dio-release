import 'package:action_dio_release/action_dio_release.dart';
import 'package:test/test.dart';

void main() {
  test('Test pkgList', () {
    final pkgList1 = convertPkgList('dio: v1.0.0');

    expect(pkgList1.length, 1);
    expect(pkgList1[0].name, 'dio');
    expect(pkgList1[0].version, '1.0.0');

    final pkgList2 = convertPkgList('dio: v1.0.0\ncookie_manager: v1.0.0');

    expect(pkgList2.length, 2);
    expect(pkgList2[0].name, 'dio');
    expect(pkgList2[0].version, '1.0.0');

    expect(pkgList2[1].name, 'cookie_manager');
    expect(pkgList2[1].version, '1.0.0');

    // test no invalid pkg name
    final pkgList3 = convertPkgList('invalid_pkg: v1.0.0');
    expect(pkgList3.length, 0);
  });
}
