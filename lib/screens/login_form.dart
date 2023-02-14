import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/dashboard.dart';
import 'package:request/screens/widgets/custom_bottun.dart';
import 'package:request/screens/widgets/custom_text.dart';
import 'package:request/screens/widgets/responsive_util.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _ispasswordvisible = false;
  String _username = "";
  String _password = "";
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController()
      ..addListener(() {
        setState(() {
          _username = _usernameController.text.trim();
        });
      });
    _passwordController = TextEditingController()
      ..addListener(() {
        setState(() {
          _password = _passwordController.text.trim();
        });
      });
  }

  bool get _isFormValid => _username.isNotEmpty && _password.isNotEmpty;
  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Column(
        children: [
          CustomTextField(
            placeholder: "Username",
            controller: _usernameController,
            prefixIcon: const Icon(
              Icons.person,
              color: themeColorDarkest,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            controller: _passwordController,
            hidetext: !_ispasswordvisible,
            suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(_ispasswordvisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined)),
            placeholder: "Password",
            prefixIcon: const Icon(
              Icons.lock,
              color: themeColorDarkest,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: CostumButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Dashboard();
                }));
              },
              lable: 'login',
              disabled: !_isFormValid,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => {},
            child: const Text("Forget Password?"),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Join us now ?  "),
              InkWell(
                onTap: () {},
                child: const Text(
                  "Regster",
                  style: TextStyle(
                      color: themeColorDarkest,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  //   return Container(child:  Column(
  //         children: [
  //           CustomTextField(
  //             placeholder: "Username",
  //             controller: _usernameController,
  //             prefixIcon: const Icon(
  //               Icons.person,
  //               color: themeColorDarkest,
  //             ),
  //           ),
  //           const SizedBox(
  //             height: 30,
  //           ),
  //           CustomTextField(
  //             controller: _passwordController,
  //             hidetext: !_ispasswordvisible,
  //             suffixIcon: IconButton(
  //                 onPressed: _togglevisibilty,
  //                 icon: Icon(_ispasswordvisible
  //                     ? Icons.visibility_outlined
  //                     : Icons.visibility_off_outlined)),
  //             placeholder: "Password",
  //             prefixIcon: const Icon(
  //               Icons.lock,
  //               color: themeColorDarkest,
  //             ),
  //           ),
  //           const SizedBox(
  //             height: 20,
  //           ),
  //           SizedBox(
  //             width: double.infinity,
  //             child: CostumButton(
  //               onPressed: _tryLogin,
  //               lable: 'login',
  //               disabled: !_isFormValid,
  //               padding:
  //                   EdgeInsets.symmetric(vertical: responsiveUtil.defaultGap),
  //             ),
  //           ),
  //           const SizedBox(
  //             height: 20,
  //           ),
  //           InkWell(
  //             onTap: () => {},
  //             child: const Text("Forget Password?"),
  //           ),
  //           const SizedBox(
  //             height: 20,
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               const Text("Join us now ?  "),
  //               InkWell(
  //                 onTap: widget.switshToRigteratinForm,
  //                 child: const Text(
  //                   "Regster",
  //                   style: TextStyle(
  //                       color: themeColorDarkest,
  //                       decoration: TextDecoration.underline),
  //                 ),
  //               )
  //             ],
  //           )
  //         ],
  //       ));

  // }
  // void _tryLogin() {}
  // void _togglevisibilty() {
  //   setState(() => _ispasswordvisible = !_ispasswordvisible);
  // }
}
