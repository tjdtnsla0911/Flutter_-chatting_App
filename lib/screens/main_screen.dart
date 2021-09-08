import 'package:chat_app/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
      drawer: Drawer(),
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        title: Text('AXA손해보험'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
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
                padding: EdgeInsets.only(top: 25, left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // 요놈이 컬럼에서 중앙정렬해줌

                  children: [
                    RichText(
                      text: TextSpan(
                          text: '오빤 AXA 스타일~',
                          style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: [
                            // TextSpan(
                            //   text: '보험많이사라.',
                            //   style: TextStyle(
                            //       letterSpacing: 1.0,
                            //       fontSize: 25,
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.black
                            //   ),
                            // )
                          ]),
                    ),
                    //RichText밖으로 나왓쪙!
                    SizedBox(
                      //간격을 위해 하는놈
                      height: 6.0,
                    ),

                    Text(
                      '보험많이사라',
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 180,
              child: Container(
                padding: EdgeInsets.only(top: 10),
                height: 280.0,
                //오른쪽에서 깍음 (크기)
                width: MediaQuery.of(context).size.width - 40,
                //왼쪽에서 오른쪽으로 감 (이동)
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                //데코레이션 가자~ 좀깍고하자
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

                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [

                        GestureDetector(
                          onTap: (){
                            print('####login 버튼클릭');
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                '로그인',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: !isSignupScreen ? Colors.blue :
                                Palette.textColor1),
                              ),
                              if(!isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 3,
                                width: 55,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            print('사인업 버튼누름');
                            setState(() {
                              isSignupScreen = true;
                            });
                          },

                          child: Column(

                            children: [

                              Text(
                                '회원가입',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color:isSignupScreen ? Colors.blue :
                                    Palette.textColor1),
                              ),
                              if(isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 3,
                                  width: 55,
                                  color: Colors.orange,
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                  Container(
                    //Form으로 데이터 전송수신하자 벨리데이션 값 받기 쉬움
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            //로그인할곳 꾸미기
                            decoration: InputDecoration(
                              prefixIcon:
                              Icon(
                                  Icons.account_circle_rounded,
                                color: Palette.iconColor, //사진색깔바뀜
                              ),
                              //얘가 텍스트폼필드 설정해줌
                              enabledBorder: OutlineInputBorder(
                                //여기서 텍스트폼필드 색깔조짐
                                borderSide: BorderSide(
                                  color: Colors.red
                                ),

                                borderRadius: BorderRadius.all(
                                  Radius.circular(35.0),
                                ),
                              ),
                              //focusedBorder는 선택되었을때 되는거
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                ),

                                borderRadius: BorderRadius.all(
                                  Radius.circular(35.0),
                                ),
                              ),

                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  ],
                ),
              )),
        ],
      ),
    );
  }
}
