import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';

class AppErrorWidget extends StatefulWidget {
  final VoidCallback onPress;
  final String message;

  const AppErrorWidget(
      {super.key, required this.onPress, required this.message});

  @override
  State<AppErrorWidget> createState() => _AppErrorWidgetState();
}

class _AppErrorWidgetState extends State<AppErrorWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .15),
            AssetsHelper.getSvgIcon(
                height: 15.h,
                SC.userThemeMode == ThemeMode.light
                    ? AssetUrl.sendPlane
                    : AssetUrl.sendPlane,
                color: Colors.transparent),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Text(widget.message,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 20)),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .15),
            ButtonView(
              width: 100,
              onPressed: () {
                sendMainReport();
                widget.onPress;
              },
              text: 'Report',
            )
          ],
        ),
      ),
    );
  }

  Future<void> sendMainReport() async {
    final Email email = Email(
      body: widget.message,
      subject: 'Immowin 24 connect Error reporting :: 😀 :: ${DateTime.now()}',
      recipients: ['chirag.fcr@gmail.com'],
      attachmentPaths: [],
      isHTML: false,
    );

    String platformResponse;

    try {

      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {

      platformResponse = error.toString();
    }

    if (!mounted) return;


    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
  }

// sendMailReport() async {
//   // Note that using a username and password for gmail only works if
//   // you have two-factor authentication enabled and created an App password.
//   // Search for "gmail app password 2fa"
//   // The alternative is to use oauth.
//   String username = 'chirag.fcr@gmail.com';
//   String password = 'Fcr@1234';
//
//   final smtpServer = gmail(username, password);
//   // Use the SmtpServer class to configure an SMTP server:
//   // final smtpServer = SmtpServer('smtp.domain.com');
//   // See the named arguments of SmtpServer for further configuration
//   // options.
//
//   // Create our message.
//   final message = Message()
//     ..from = Address(SC.user.data!.email, 'Your name')
//     ..recipients.add('chirag.fcr@gmail.com')
//     ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
//     ..text = 'This is the plain text.\nThis is line 2 of the text part.'
//     ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";
//
//   try {
//     final sendReport = await send(message, smtpServer);
//     print('Message sent: ' + sendReport.toString());
//   } on MailerException catch (e) {
//     print('Message not sent.');
//     for (var p in e.problems) {
//       print('Problem: ${p.code}: ${p.msg}');
//     }
//   }
//   // DONE
// }
}
