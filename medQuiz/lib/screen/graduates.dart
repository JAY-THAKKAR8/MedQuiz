import 'package:flutter/material.dart';

import 'package:medquiz/screen/profile.dart';
import 'package:medquiz/utility/app_colors.dart';

class Graduates extends StatefulWidget {
  const Graduates({Key? key}) : super(key: key);

  @override
  State<Graduates> createState() => _GraduatesState();
}

class _GraduatesState extends State<Graduates> {
   bool chekedboxvalue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Graduates'),
      centerTitle: true,
      backgroundColor: AppColor.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 55),
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.primaryColor
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Checkbox(
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(6),
                                ),
                            side: BorderSide(color: Colors.white),
                            value: chekedboxvalue,
                          onChanged: (bool? value){
                            setState(() {
                              chekedboxvalue = value!;
                            });
                          },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height:13,),
                              Text('Specialization test',
                              style: TextStyle
                              (color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                              ),
                            ],
                          ), 
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 90,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color:  AppColor.primaryColor
                    ),
                     child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Checkbox(
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(6),
                                ),
                            side: BorderSide(color: Colors.white),
                            value: chekedboxvalue,
                          onChanged: (bool? value){
                            setState(() {
                              chekedboxvalue = value!;
                            });
                          },
                          ),
                        
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height:13,),
                              Text('General medical test ',
                              style: TextStyle
                              (color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                              ),
                            ],
                          ), 
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                   SizedBox(height: 290),
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(10.0),
              //  child: ButtonWidget(
              //       text: 'submit',
              //       textcolor: Colors.white,
              //        onTap:() {
              //         Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
              //        }),
             )
          ],
        ),
      ),
    );
    
  }
}