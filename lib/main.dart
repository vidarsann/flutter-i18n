import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; 
import 'package:translator/translator.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  /* String translatedSentence;

  Future<String> autoTranslate (translatedInput) async {
    final translator = GoogleTranslator();
    String translatedSentence;

    translator.translate(translatedInput, from: 'sv', to: 'en').then((value) {
      translatedSentence = value.toString();
    });

    return
  }
 */
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context).helloWorld,
            ),
            Localizations.override(
              context: context,
              locale: const Locale('en'),
              child: Builder(
                builder: (BuildContext buildContext){
                  return Text(AppLocalizations.of(buildContext).helloWorld);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
