import 'package:flutter/material.dart';

TextStyle textstylee =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18);

Widget additionalinfo(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
    padding: EdgeInsets.all(20),
    width: double.infinity,
    child: Column(
      children: [
        Text("Additional Info",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 5,
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          

            children: [
              Container(
                margin: EdgeInsets.only(left: 4),
                width: 100,
                height: 110,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.transparent,),
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("wind",style: textstylee,),


                    Text(wind)
                  ],
                ),
                
              ),
               Container(
                

                margin: EdgeInsets.only(left: 10),
                width: 100,
                height: 110,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.transparent,),
                child:
                
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Humidity",style: textstylee,),
                    Text(humidity)
                  ],
                ),
              ),
               Container(
                margin: EdgeInsets.only(left: 10),
                width: 100,
                height: 110,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.transparent,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Pressure",style: textstylee,),
                    
                    Text(pressure)
                  ],
                ),
                
              ), Container(
                margin: EdgeInsets.only(left: 10),
                width: 100,
                height: 110,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.transparent,),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("Feels_like",style: textstylee,),
                    Text(feels_like)
                  ],
                ),
                
              )
            ],

          ),
        )
      
      ],
    ),
  );
  
  
    }
    
         