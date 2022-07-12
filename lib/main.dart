import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // root node of widget tree
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SignInScreen(),
        debugShowCheckedModeBanner: false);
  }
}

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: const Text(' Login to account '),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 75,
        ),
        child :SingleChildScrollView(
          reverse : true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50 ),
              Image.asset("assets/bank.png"),
              const SizedBox(height: 15),
              const Text(
                'Welcome to \nYour Bank',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email), hintText: "Email Address"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock), hintText: "Password"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Forgot Password ? " ,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              InkWell(
                onTap: () {
                  debugPrint('Credentials Entered !! ! ');
                },
                child: Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50 ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'First Time User ?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5 ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign up here',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                    fontSize: 24,
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
