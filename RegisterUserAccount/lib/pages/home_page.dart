import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  var name = TextEditingController();
  var email = TextEditingController();
  var phoneNo = TextEditingController();
  var gender = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
          child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.name,
              controller: name,
              decoration: InputDecoration(
                hintText: "Enter your Name",
                focusedBorder: (OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: const BorderSide(
                  color: Colors.deepOrange,
                  width: 2,
                ),
              )),
              enabledBorder:(OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: const BorderSide(
                  color: Colors.blueAccent,
                  width: 2,
                ),
              ))
              )),
            Container(
              height: 11,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: email,
              decoration: InputDecoration(
                hintText: "Enter your registered Email-id",
                  focusedBorder: (OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: const BorderSide(
                  color: Colors.deepOrange,
                  width: 2,
                ),
              )),
              enabledBorder:(OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: const BorderSide(
                  color: Colors.blueAccent,
                  width: 2,
                ),
              )))
            ),
            Container(
              height: 11,
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: gender,
             decoration: InputDecoration(
              hintText: "Enter your Gender",
                  focusedBorder: (OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: const BorderSide(
                  color: Colors.deepOrange,
                  width: 2,
                ),
              )),
              enabledBorder:(OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: const BorderSide(
                  color: Colors.blueAccent,
                  width: 2,
                ),
              )))
            ),
            Container(
              height: 11,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              controller: phoneNo,
              decoration: InputDecoration(
                hintText: "Enter your Phone No.",
                  focusedBorder: (OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: const BorderSide(
                  color: Colors.deepOrange,
                  width: 2,
                ),
              )),
              enabledBorder:(OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: const BorderSide(
                  color: Colors.blueAccent,
                  width: 2,
                ),
              )))
            ),
            ElevatedButton(onPressed: (){
              String UName = name.text.toString();
              String UEmail = name.text.toString();
              String UPhoneNo = name.text.toString();
              String UGender = name.text.toString();
              print("UserName: $name, UserEmail: $email, UserPhoneNo: $phoneNo, UserGender: $gender");
            }, child: const Text('Save'))
          ],
        ),
      )),
    );
  }
}
