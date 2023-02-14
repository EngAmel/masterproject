import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/supervisor/supervisor_details.dart';
import 'package:request/screens/widgets/mytext.dart';

class MyCard extends StatelessWidget {
  final String imagename;
  final String personname;
  final String email;
  final String phone;
  final String jop;
  final Color mycolor;
  final VoidCallback onPress1;
  final VoidCallback onPress2;
  final VoidCallback onPress3;

  const MyCard({
    Key? key,
    this.imagename = "assets/images/783652-200.png",
    required this.email,
    required this.personname,
    required this.phone,
    required this.jop,
    required this.onPress1,
    required this.onPress2,
    required this.onPress3,
    this.mycolor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: 300.0,
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Image.asset(
                      imagename,
                      fit: BoxFit.fitWidth,
                      height: 200,
                      width: 300,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        personname,
                        style: TextStyle(color: mycolor),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.school,
                            size: 20,
                            color: themeColorDarkest,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          MyText(
                            txt: jop,
                            weight: FontWeight.normal,
                            mycolor: Colors.black54,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.email,
                            size: 20,
                            color: themeColorDarkest,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          MyText(
                            txt: "Othman.alnour@gmail.com",
                            weight: FontWeight.normal,
                            mycolor: Colors.black54,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 20,
                            color: themeColorDarkest,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          MyText(
                            txt: phone,
                            weight: FontWeight.normal,
                            mycolor: Colors.black54,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  height: 10,
                  color: themeColorDarkest,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: onPress1,
                      icon: const Icon(Icons.view_headline_rounded),
                    ),
                    IconButton(
                      onPressed: onPress2,
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: onPress3,
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
