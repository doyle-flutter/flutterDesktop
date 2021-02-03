// (1) pub: https://pub.dev/packages/file_picker_cross
// (2) Go 언어 설치 이후 go_flutter 설치
// windows : go_flutter
// - > set GO111MODULE=on
// - > go get -u -a github.com/go-flutter-desktop/hover
// * 제어판 - 개발자 모드 설정 필요
//(3) MacOS : 설정
// Runner > DebugProfile.entitlements(동일 위치의 Release.entitlements 파일에도 같이 입력)
// ---
// <key>com.apple.security.files.user-selected.read-write</key>
// <true/>
// ---


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:file_picker_cross/file_picker_cross.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GestureBinding.instance.resamplingEnabled = true;
  return runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text("File_Picker_Cross"),
          onPressed: () async {
            FilePickerCross myFile = await FilePickerCross.importFromStorage();
            print(myFile.type);
          },
        ),
      ),
    );
  }
}
