import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class ExpandedDemoScreen extends StatelessWidget {
  const ExpandedDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get child => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color: const Color.fromRGBO(236, 239, 241, 1), width:2
      )
    );

    return MaterialApp(
            home: Scaffold(
                body: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: double.infinity,

                      child: Column(children:[
                          SizedBox(height: 84),
                          Row(
                               children: [
                                 SizedBox(width: 75,),
                                 Icon(Icons.supervised_user_circle_outlined, color: Colors.black),
                                 SizedBox(width: 5,),


                              Expanded(
                                  flex:1,
                                  child: Text("Регистрация",
                                      style: TextStyle(fontSize:20, fontWeight: FontWeight.bold,)))]),
                          SizedBox(height: 15),
                          Container(height: 4,
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              color: Color.fromRGBO(92, 92, 92, 1) ),
                          SizedBox(height: 20),
                          Expanded(child: Text("Чтобы зарегистрироваться введите свой номер телефона и почту",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(196, 196, 196, 1)) )),
                          Expanded(child: Text("Телефон",
                              style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 0, 0, 0.6)) )),
                          const SizedBox(width:244, height: 34,
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                              filled: true,fillColor: Color.fromRGBO(236, 239, 241, 1),
                              enabledBorder: borderStyle,
                              focusedBorder: borderStyle,
                               labelText: "+7"),),),
                          SizedBox(height: 30),
                          Expanded(child: Text("Почта",
                              style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 0, 0, 0.6)) )),
                          const SizedBox(width:244, height: 34, child: TextField(
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              filled: true,fillColor: Color.fromRGBO(236, 239, 241, 1),
                              enabledBorder: borderStyle,
                              focusedBorder: borderStyle,
                              labelText: " "),),),
                          SizedBox(height: 40),
                          Expanded(child: Text("Вам придёт четырёхзначный код, который будет вашим паролем",
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Color.fromRGBO(196, 196, 196, 1) ) )),
                        SizedBox(height:20),
                          Expanded(child: Text("Изменить пароль можно будет в личном кабинете после регистрации",
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Color.fromRGBO(196, 196, 196, 1)) )),
                          SizedBox(height:30),
                          SizedBox(width:141, height: 32 , child: ElevatedButton(onPressed:() {},
                              child: Text("Отправить код"),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(0, 121, 208, 1),
                                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(36.0),),
                              ),),),
                          SizedBox(height:50),
                  ],),
                    ),
                    ),);




  }
}

