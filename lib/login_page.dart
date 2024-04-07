
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUsre = false;


  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: myColor,
        image: DecorationImage(
          image: const AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(myColor.withOpacity(0.2), BlendMode.dstATop),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Positioned(top: 80, child: _buildTop()),
          Positioned(bottom: 0, child: _buildBottom()),
        ]),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.run_circle,
            size: 100,
            color: Colors.white,
          ),
          Text(
            "Sports Voot",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                letterSpacing: 2),
          )
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const  RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(),
        ),
      ),
    );
  }
  Widget _buildForm(){
    return  Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [Text('Welcome',style: TextStyle(color: myColor,fontSize: 32,fontWeight: FontWeight.w500)),
    _buildGreytext('Please login with your information'),
    const SizedBox(height: 60,),
    _buildGreytext('Email address'),
    _buildInputfield(emailController),
     const SizedBox(height: 40),
     _buildGreytext('Password'),
    _buildInputfield(passwordController , isPassword: true),
    const SizedBox(height: 20),
    _buildRememberForget(),
    const SizedBox(height: 20),
    _buuildLoginButton(),
     const SizedBox(height: 20),
    _buildOtherLogin(),
    
     ],
    );
  }
  Widget  _buildGreytext(String text){
    return Text(text,style: const TextStyle(color: Colors.grey));

  }
  Widget _buildInputfield(TextEditingController controller,{isPassword = false}){
    return  TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: isPassword ? const Icon(Icons.remove_red_eye) : const Icon(Icons.done) 
      ),
    );
  }
  Widget _buildRememberForget(){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Checkbox(value: rememberUsre, onChanged: (value){
            setState(() {
              rememberUsre = value!;
            });
          }),
          _buildGreytext('Rememer me')
        ],
      ),
      TextButton(onPressed: (){}, child: _buildGreytext('I forget my password'))
    ],);
    
  }
  Widget _buuildLoginButton(){
    return ElevatedButton(onPressed: (){
      debugPrint("Email : ${emailController.text}");
      debugPrint("Password : ${passwordController.text}");
    },
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
      elevation: 20, 
      shadowColor: myColor,
      minimumSize: const Size.fromHeight(60)
    ),
     child: const Text("Login"));
  }
  Widget _buildOtherLogin(){
    return Center(
      child: Column(
        children: [
           _buildGreytext('or Login with'),
           const SizedBox(height: 10),
           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Tab(icon: Image.asset('assets/images/facebook.png')),
            Tab(icon: Image.asset('assets/images/twitter.png')),
            
          ],)
        
        ],
      ),
    );
  }
}