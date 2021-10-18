import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/widgets/test_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    //double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBill(),

          ],
        ),
      ),
    );
  }
  _headSection(){
    return Container(
      height: 310,

      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _buttonContainer(),
        ],
      ),
    );
  }
  _buttonContainer(){
    return Positioned(
        bottom: 15,
        right: 58,
        child: Container(
          height: 50,
          width: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "images/lines.png"
          )
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset:  Offset(0, 1),
            color: Color(0xFF11324d).withOpacity(0.2)
          )
        ]
      ),
    )
    );
  }
  _mainBackground(){
    return Positioned(
      bottom: 10,
      left: 0,
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "images/background.png"
            )
          )
        ),
      ),
    );
  }
  _curveImageContainer(){
    return Positioned(
      left: 0,
        right: -2,
        bottom: 10,
        child: Container(
          height: MediaQuery.of(context).size.height*0.1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "images/curve.png"
                    )
                )
            ),
        )
    );
  }
  _listBill(){
    return Positioned(
        top: 320,

        child: Column(
          children: [
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFd8dbe0),
                        offset: Offset(1, 1),
                        blurRadius:  20.0,
                        spreadRadius: 10
                    )
                  ]
              ),
              child: Container(
                margin:  const EdgeInsets.only(top: 10, left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.0),
                                  border: Border.all(
                                    width: 3,
                                    color: Colors.blueGrey,
                                  ),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "images/brand1.png"
                                      )
                                  )
                              ),

                            ),
                            SizedBox(width: 10, ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "KenGen Power",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.mainColor,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "ID: 55533222",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.idColor,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                              ],

                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        SizedText(text:"Auto blablabla 2010", color: AppColor.green,),

                      ],

                    ),
                    Row(

                      children: [
                        //SizedBox(width: 60,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80, height: 30,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.selectBackground
                            ),
                              child: Center(
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.selectColor
                                  ),
                                ),),
                            ),
                            SizedBox(height: 30,),
                            Text(
                              "\$1543.00",
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColor.mainColor,
                                fontWeight: FontWeight.w900,

                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "Due in 3 days",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.selectColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 5,
                          height: 35,
                          decoration: BoxDecoration(
                              color: AppColor.halfOval,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)
                              )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

            ),
            SizedBox(height: 8,),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFd8dbe0),
                        offset: Offset(1, 1),
                        blurRadius:  20.0,
                        spreadRadius: 10
                    )
                  ]
              ),
              child: Container(
                margin:  const EdgeInsets.only(top: 10, left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.0),
                                  border: Border.all(
                                    width: 3,
                                    color: Colors.blueGrey,
                                  ),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "images/brand1.png"
                                      )
                                  )
                              ),

                            ),
                            SizedBox(width: 10, ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "KenGen Power",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.mainColor,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "ID: 55533222",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.idColor,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                              ],

                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        SizedText(text:"Auto blablabla 2010", color: AppColor.green,),

                      ],

                    ),
                    Row(

                      children: [
                        //SizedBox(width: 60,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80, height: 30,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.selectBackground
                            ),
                              child: Center(
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.selectColor
                                  ),
                                ),),
                            ),
                            SizedBox(height: 30,),
                            Text(
                              "\$1543.00",
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColor.mainColor,
                                fontWeight: FontWeight.w900,

                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "Due in 3 days",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.selectColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 5,
                          height: 35,
                          decoration: BoxDecoration(
                              color: AppColor.halfOval,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)
                              )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

            ),
            SizedBox(height: 8,),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFd8dbe0),
                        offset: Offset(1, 1),
                        blurRadius:  20.0,
                        spreadRadius: 10
                    )
                  ]
              ),
              child: Container(
                margin:  const EdgeInsets.only(top: 10, left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.0),
                                  border: Border.all(
                                    width: 3,
                                    color: Colors.blueGrey,
                                  ),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "images/brand1.png"
                                      )
                                  )
                              ),

                            ),
                            SizedBox(width: 10, ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "KenGen Power",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.mainColor,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "ID: 55533222",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.idColor,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                              ],

                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        SizedText(text:"Auto blablabla 2010", color: AppColor.green,),

                      ],

                    ),
                    Row(

                      children: [
                        //SizedBox(width: 60,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80, height: 30,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.selectBackground
                            ),
                              child: Center(
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.selectColor
                                  ),
                                ),),
                            ),
                            SizedBox(height: 30,),
                            Text(
                              "\$1543.00",
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColor.mainColor,
                                fontWeight: FontWeight.w900,

                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "Due in 3 days",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.selectColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 5,
                          height: 35,
                          decoration: BoxDecoration(
                              color: AppColor.halfOval,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)
                              )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

            )
          ],
        )


    );
  }
}
