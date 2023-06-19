import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  static String verify = "";
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var phone = "";
  @override
  Widget build(BuildContext context) {
    TextEditingController countrycode = TextEditingController();
    countrycode.text = "+91";
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;

    return Scaffold(
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
                SizedBox(height: sh *0.01,),
                Container(
                  margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border : Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                    SizedBox(width: sw *0.04,)
                    ,SizedBox(
                    width: sw*0.09 ,
                    child: TextField(
                      controller: countrycode,
                      decoration: InputDecoration(
                        border: InputBorder.none,)
                    ),
                  ),
                    Text("| ", style: TextStyle(fontSize: 29, color: Colors.grey)),
                  Expanded(

                      child: TextField(
                        keyboardType: TextInputType.phone,
                        onChanged: (value){
                          phone = value;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone"
                        ),


                      ))
                ]
                )
                ),
                SizedBox(height: sh *0.01,),
                SizedBox(
                  height: sh*0.06,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () async {
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '${countrycode.text + phone}',
                      verificationCompleted: (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                       codeSent: (String verificationId, int? resendToken) {
                         Login.verify=verificationId;
                        Navigator.pushNamed(context, 'otp');
                       },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                    // Navigator.pushNamed(context, 'otp');
                  }, child: Text("Send the Code"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade700,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

                  ),),
                ),
                SizedBox(height: sh *0.02,),


              ],
            ),

          ),
        )


    );
  }
}


