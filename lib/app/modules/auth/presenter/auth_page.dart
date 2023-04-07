import 'package:flutter/material.dart';
import 'package:desafio_flutter_floripa/app/shared/styles/color_palette.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: homeBackgroundColor,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start  ,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(text: 'Bem-vindo\n'),
                        TextSpan(text: 'ao Flutter Floripa!'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'A comunidade oficial Flutter em\n',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            color: subtitlesFont,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Florianópolis-SC',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            color: subtitlesFont,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 72,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hoverColor: Colors.white,
                        prefix: SizedBox(width: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        filled: true,
                        hintText: 'E-mail',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: textFormFieldFontColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefix: const SizedBox(width: 20),
                        hintText: 'Senha',
                        hintStyle: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: textFormFieldFontColor,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 57),
                  SizedBox(
                    width: 165,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: loginButton,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                      ),
                      child: const Text(
                        'Entrar',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Esqueceu sua senha? ',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            color: subtitlesFont,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Recupere aqui',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                color: forgotPasswordText,
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
