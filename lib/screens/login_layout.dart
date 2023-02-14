import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/login_form.dart';
import 'package:request/screens/widgets/custom_text.dart';

class Loginlayout extends StatefulWidget {
  const Loginlayout({super.key});

  @override
  State<Loginlayout> createState() => _LoginlayoutState();
}

class _LoginlayoutState extends State<Loginlayout> {
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

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                width: 500,
                padding: const EdgeInsets.only(left: 50.0),
                alignment: Alignment.topRight,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "assets/images/download.png",
                  ),
                )),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
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
            ],
          ),
        )),
        //form
      ],
    );
  }
}
