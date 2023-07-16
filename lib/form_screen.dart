import 'package:amklms/dashboard.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget{

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen>{
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("AMIKLMS Mobile"),
      centerTitle: true,
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset(
                "images/amik.png",
                height: 200,
                width: 200,
              ),
              SizedBox(height: 50,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: passController,
                obscureText: passToggle,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffix: InkWell(
                    onTap: (){
                    setState(() {
                    passToggle = !passToggle;
                    });
                    },
                    child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              SizedBox(height: 60,),
              InkWell(
                onTap: (){
                  if(_formfield.currentState!.validate()){
                    print("Success");
                    emailController.clear();
                    passController.clear();
                  }
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardView()),
                  );
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0x4C80E5fff),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Log In", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum Punya Akun?",
                  style: TextStyle(
                    fontSize: 17,
                   ),
                   ),
                   TextButton(
                    onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardView()),
                  );
                    }, 
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                  )),
              ],),
            ],),
          ),
        ),
      ),
    );
    
  }
}