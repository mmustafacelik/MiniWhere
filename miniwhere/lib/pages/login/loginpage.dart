import 'package:flutter/material.dart';
import 'cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  var size, height, width;
  String? email;
  String? sifre;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: getBody(context),
    );
  }

  getBody(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                "assets/images/background/loginbackgroundimages.jpg"),
            fit: BoxFit.cover),
      ),
      child: BlocProvider(
        create: (context) => LoginPageCubit(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height / 40,
                ),
                Container(
                  height: height / 5,
                  width: width / 5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/car_toy.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 20,
                ),
                SizedBox(
                  width: width - 50,
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "E-Mail Giriniz",
                      labelText: "E-Mail",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            12,
                          ),
                        ),
                      ),
                    ),
                    onChanged: (emailtext) {
                      email = emailtext;
                    },
                  ),
                ),
                SizedBox(
                  height: height / 20,
                ),
                SizedBox(
                  width: width - 50,
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      hintText: "Şifre Giriniz",
                      labelText: "Şifre",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            12,
                          ),
                        ),
                      ),
                    ),
                    onChanged: (sifretext) {
                      sifre = sifretext;
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
