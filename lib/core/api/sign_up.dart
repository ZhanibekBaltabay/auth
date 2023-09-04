import 'package:auth/core/core.dart';
import 'package:auth/generated/l10n.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUp> {
  bool isHiddenPassword = true;
  TextEditingController nameTextInputController = TextEditingController();
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  TextEditingController passwordTextRepeatInputController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();
    passwordTextRepeatInputController.dispose();

    super.dispose();
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> signUp() async {
    final navigator = Navigator.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    if (passwordTextInputController.text !=
        passwordTextRepeatInputController.text) {
      SnackBarService.showSnackBar(
        context,
        S.of(context).passwordsMustMatch,
        true,
      );
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailTextInputController.text.trim(),
        password: passwordTextInputController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        SnackBarService.showSnackBar(
          context,
          S.of(context).thisEmailIsAlreadyInUsePleaseTryAgainUsing,
          true,
        );
        return;
      } else {
        SnackBarService.showSnackBar(
          context,
          S.of(context).unknownErrorPleaseTryAgainOrContactSupport,
          true,
        );
      }
    }

    navigator.pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.app_registration,
                size: 125,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 30,
              ),
//name
              TextFormField(
                keyboardType: TextInputType.name,
                autocorrect: false,
                controller: nameTextInputController,
                validator: (name) => name != null && name.length < 6
                    ? S.of(context).pleaseEnterAValidEmail
                    : null,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: S.of(context).userName,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
//email
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                controller: emailTextInputController,
                validator: (email) =>
                    email != null && !EmailValidator.validate(email)
                        ? S.of(context).pleaseEnterAValidEmail
                        : null,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: S.of(context).email,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
//password
              TextFormField(
                autocorrect: false,
                controller: passwordTextInputController,
                obscureText: isHiddenPassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => value != null && value.length < 6
                    ? S.of(context).minimum6Characters
                    : null,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: S.of(context).password,
                  suffix: InkWell(
                    onTap: togglePasswordView,
                    child: Icon(
                      isHiddenPassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
//password 2
              TextFormField(
                autocorrect: false,
                controller: passwordTextRepeatInputController,
                obscureText: isHiddenPassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => value != null && value.length < 6
                    ? S.of(context).minimum6Characters
                    : null,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: S.of(context).reenterPassword,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: signUp,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      S.of(context).signUp,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  S.of(context).signIn,
                  style: const TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
