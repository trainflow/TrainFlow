import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';


class RegisterStep2 extends StatefulWidget {
  const RegisterStep2({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<RegisterStep2> createState() => _RegisterStep2State();
}

class _RegisterStep2State extends State<RegisterStep2> {
  int _counter = 0;
  int _reset = 0;
  int _activeStep = 1;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _incrementReset() {
    setState(() {
      _reset++;
    });
  }

  void _resetCounter() {
    if (_counter > 1) {
      setState(() {
        _counter = 0;
      });
      _incrementReset();
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    const color = Color(0xffF4D03F);
    const color2 = Color(0xff2E2E2E);
    const title = "TrainFlow";
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background-image.png"), fit: BoxFit.cover),
        ),
        alignment: Alignment.center, // where to position the child
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.95,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: color2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Train",
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.bold,
                                fontSize: 36)),
                        TextSpan(
                            text: "Flow",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 36))
                      ]))),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet  Lorem ipsum dolor ',
                    style: TextStyle(color: Colors.white),
                  )),
              const Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    //<-- SEE HERE
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color, width: 4)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color, width: 2)),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: color, fontWeight: FontWeight.bold),
                    hintText: 'Enter Your Password',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    //<-- SEE HERE
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color, width: 4)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color, width: 2)),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: color, fontWeight: FontWeight.bold),
                    hintText: 'Enter Your Password',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color,
                      minimumSize: Size.fromHeight(
                        MediaQuery.of(context).size.height *
                            0.05, // dynamically assign height
                      ),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
              EasyStepper(
                activeStep: _activeStep,
                lineLength: 0,
                lineSpace: 0,
                defaultLineColor: Colors.white,
                finishedLineColor: Colors.orange,
                activeStepTextColor: Colors.black87,
                finishedStepTextColor: Colors.black87,
                internalPadding: 5,
                showLoadingAnimation: false,
                stepRadius: 6,
                showStepBorder: false,
                lineDotRadius: 1.5,
                steps: [
                  EasyStep(
                    customStep: CircleAvatar(
                      radius: _activeStep == 1 ? 6 : 5,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  EasyStep(
                    customStep: CircleAvatar(
                      radius: _activeStep == 2 ? 6 : 5,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}