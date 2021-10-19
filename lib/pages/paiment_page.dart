import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/pages/my_home_page.dart';
import 'package:flutter_payment_app/widgets/buttons.dart';
import 'package:flutter_payment_app/widgets/large_buttons.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    "images/paymentbackground.png"
                )
            )
        ),
        child: Column(
          children: [
            Container(

              width: double.maxFinite,
              height: h*0.14,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                      "images/success.png"
                  )
              ),
            )
            ),
            Text(
              "Success !",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3c4b60)
              ),
            ),
            Text(
              "Payment is completed for 2 bills",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF9b9da1)
              ),
            ),
            SizedBox(height: 0.045,),
            Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(0.5)
                )
              ),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, index){
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.green
                                ),
                                child: Icon(Icons.done, size: 30, color: Colors.white,),
                              ),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15,),
                                  Text(
                                    "KenGen Power",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Text(
                                    "ID: 1234567",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF9b9da1)
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 20,),
                              Column(
                                children: [
                                  SizedBox(height: 40,),
                                  Text(
                                    "\$1234.00",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Divider(thickness:  2, color: Colors.grey.withOpacity(0.5),)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "Total Amount",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF9b9da1)
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "\$3000.00",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3c4b60)
              ),
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButtons(icon: Icons.share_sharp, onTap: (){}, text: "share"),
                SizedBox(width: h*0.05,),
                AppButtons(icon: Icons.print_outlined, onTap: (){}, text: "print"),
              ],
            ),
            SizedBox(height: 10,),
            AppLargeButton(text: "Done", backgroundColor: Colors.white, textColor: AppColor.mainColor,
                onTap: (){Get.to(()=> MyHomePage());}
                ),
          ],
        ),
      ),
    );
  }
}
