import 'package:flutter/material.dart';
import 'package:flutter_application_2/add_task.dart';
import 'package:flutter_application_2/core/network/local_storage.dart';
import 'package:flutter_application_2/features/home/Home_view.dart';
import 'package:flutter_application_2/upload_view.dart';
import 'package:flutter_application_2/core/models/Text_style.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class delay extends StatefulWidget {
  const delay({super.key});

  @override
  State<delay> createState() => _delayState();
}

class _delayState extends State<delay> {
  @override
  void initState() {
    //to check if state is true or false
    bool isupload = Applocal.getData(Applocal.ISUPLOAD_KEY)?? false;
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => isupload ? home_view() : camera()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/logo.json'),
            SizedBox(
              height: 5,
            ),
            Text(
              'Taskati',
              style: getTitelStyle(fontSize: 24),
            ),
            Gap(15),
            Text(
              'it\'s Time to Get Organzied',
              style: getSmalStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
