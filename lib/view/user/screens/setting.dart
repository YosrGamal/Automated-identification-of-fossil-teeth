import 'package:flutter/material.dart';
import 'package:graduation_project/view/user/screens/changepassword.dart';
import 'package:graduation_project/view/user/screens/editprofile.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}
class _SettingState extends State<Setting> {
 bool s1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
                children: const [
                  SizedBox(height: 50),
                  Text("Settings",
                      style: TextStyle(
                          fontFamily: 'Inter',fontSize: 30,color: Color.fromARGB(255, 157, 97, 0),)),
                ]),   
                       Container(
                       margin: const EdgeInsets.only(right: 250,top: 10),
                       height: 60,
                       width: 100,
                       decoration: const BoxDecoration(
                       image: DecorationImage(
                           image: AssetImage("assets/images/asset4.png"),
                           fit: BoxFit.contain),
                      ),),
                      const Padding(
                       padding: EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 10.0),
                       child: Text(
                        'Yosr Gamal',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
            //      const Padding(
            //      padding: EdgeInsets.only(right: 250),
            //      child: CircleAvatar(
            //       minRadius: 40,
            //      backgroundImage: AssetImage('assets/images/asset4.png'),
            //    ),
            //  ),
            const Divider(height: 20, thickness: 1),
             Container(
              padding: const EdgeInsets.only(top: 0, left: 20),
              width: double.infinity,
              child: const Text(
                "Account Settings ",
                style: TextStyle(
                    height: 3,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 168, 179, 171)),
              ),
            ),
            const SizedBox(height: 3),
            BuildAccountOption(context, "Edit profile"),
            BuildAccountOption(context, "Change password"),
            SwitchListTile(
              activeColor: const Color.fromRGBO(191, 89, 0, 1),
              value: s1,
              onChanged: (bool value) {
                setState(() {
                  s1 = value;
                });
              },
              title: const Text(
                'Push notification',
                style: TextStyle(fontSize: 22),
              ),
            ),
            const Divider(height: 2, thickness: 1),
            
             Container(
              padding: const EdgeInsets.only(top: 0, left: 20),
              width: double.infinity,
              child: const Text(
                "More ",
                style: TextStyle(
                    height: 3,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 168, 179, 171)),
              ),
            ),
            const SizedBox(height: 3),
            BuildAccountOption(context, "About us"),
            BuildAccountOption(context, "Privacy policy"),
            BuildAccountOption(context, "Terms and conditions"),
          ],
        ),
      ),
    );
  }
  // ignore: non_constant_identifier_names
  GestureDetector BuildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        if (title == 'Edit Profile') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EditProfile()),
          );
        } 
        else if (title == 'Change password') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>const ChangePassword()),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey)
          ],
        ),
      ),
    );
  }
}