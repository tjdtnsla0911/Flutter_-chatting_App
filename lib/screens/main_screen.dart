import 'package:chat_app/config/palette.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  _LogginSignupScreenState createState() => _LogginSignupScreenState();
}

class _LogginSignupScreenState extends State<LoginSignupScreen> {

  bool isSignupScreen = true; //state 관리를 위해 선언한놈임

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor 설정
      backgroundColor: Palette.backgroundColor,

      body: Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 200,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/axa.png'),
                fit: BoxFit.fill, //요놈을 박아야 쫙쫙빠짐
              ),
            ),
            child: Container(

              padding: EdgeInsets.only(top:25 , left: 40),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start, // 요놈이 컬럼에서 중앙정렬해줌

                children: [

                  RichText(text:
                  TextSpan(
                    text: '오빤 AXA 스타일~',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    children:
                    [
                      // TextSpan(
                      //   text: '보험많이사라.',
                      //   style: TextStyle(
                      //       letterSpacing: 1.0,
                      //       fontSize: 25,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.black
                      //   ),
                      // )
                    ]
                  ),
                  ),
                  //RichText밖으로 나왓쪙!
                  SizedBox( //간격을 위해 하는놈
                    height: 6.0,
                  ),

                  Text('보험많이사라',
                  style: TextStyle(
                  letterSpacing: 1.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold
                  ),),

                ],
              ),
            ),

          ),
        ),
        Positioned(
            top: 180,

            child: Container(
              height: 280.0,
              width: MediaQuery.of(context).size.width-40, //오른쪽에서 깍음 (크기)
              margin: EdgeInsets.symmetric(horizontal: 20.0), //왼쪽에서 오른쪽으로 감 (이동)
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(15.0), //이게 둥근놈
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), // 투명도
                      blurRadius: 15, // ㅇ놈이 사저낭면에 그림자? 같은거넣음
                      spreadRadius: 5 //이놈은 찐잫ㄴ그림자같은거
                    )
                  ],
              ),
              child: Column(
                children: <Widget>[

                ],
              ),

            )),
      ],
      ),
    );
  }
}
