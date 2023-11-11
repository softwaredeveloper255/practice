import 'package:flutter/material.dart';
import 'otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  TextEditingController countryController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  void initState() {
    countryController.text = "+91";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.blueGrey,
                height: 350,
                child: Image.asset('assets/images/img_1.png',)),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Welcome back!",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w700
              ),
            ),
            const Text("Login to Continue!!!",
              style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w300,),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 70,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none, prefixIcon: Icon(Icons
                          .phone_android)
                      ),

                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter the mobile number",

                      prefix: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                      '(+91)',
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ),
                          suffixIcon: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 32,
                          ),
                      ),
                  ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              child: SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const MyOtp()),
                    );
                  },
                     child: const Text('Login', style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}







