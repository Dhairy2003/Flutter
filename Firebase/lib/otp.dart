import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_proj/login.dart";
import "package:flutter/material.dart";
import "package:pinput/pinput.dart";

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var code = "";
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black87,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),


        body:Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/img1.png", height: (sh*0.2), width: (sw*0.4),),
                Text("Phone Verification",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                SizedBox(height: sh *0.01,),
                Text("We need to register your phone before getting started !", textAlign: TextAlign.center,style: TextStyle(fontSize: 15)),
                SizedBox(height: sh *0.02,),
            Pinput(
              onChanged: (value){
                code= value;
              },
              length: 6,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,

            ),
                SizedBox(height: sh *0.02,),
                SizedBox(
                  height: sh*0.06,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () async {
                    try{
                      PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: Login.verify, smsCode: code );

                    // Sign the user in (or link) with the credential
                    await auth.signInWithCredential(credential);
                    Navigator.pushNamedAndRemoveUntil(context, "home", (route) => false);
                    }
                  catch(e){
                      print("wrong otp");
                  }

                    Navigator.pushNamed(context, 'otp');
                  }, child: Text("Verify Phone Number"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green.shade700,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

                    ),),
                ),
                SizedBox(height: sh *0.01,),

                Container(
                    alignment: Alignment.centerLeft,

                    child: TextButton(onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, "login", (route) => false); 
                    }, child: Text("Edit Phone Number ?", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),)))


              ],
            ),

          ),
        )


    );
  }
}
