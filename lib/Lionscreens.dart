

import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class Lion extends StatefulWidget {
  const Lion({super.key});

  @override
  State<Lion> createState() => _LionState();
}

class _LionState extends State<Lion> {
    O3DController controller = O3DController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body :Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/lion.jpeg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.linearToSrgbGamma()
          ),
          
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
                height: 200,
                width:double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black,
                          Colors.transparent,
          
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                  )
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            child:Image.asset("assets/logo.png",fit: BoxFit.cover,),),
                            CircleAvatar(
                            radius: 10,backgroundColor: Colors.white,
                           )
                          
                      ],
                      ),
                      SizedBox(height: 20,),
                          Text("Scarface Lion,\n from Kenya",
                        style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 253, 253, 253),fontWeight: FontWeight.bold,letterSpacing: 5)
                        )  
                      
                    ],
                  ),
                 
              ),
               Container(
                height: 320,
                width:double.infinity,
                   decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black,
                      Colors.black,
                      Colors.transparent
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                    )
                   ),
                   child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                       child:  Row(
                          children: [
                               Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text("More Informations",style:TextStyle(fontSize: 18,color: Color.fromARGB(255, 234, 238, 25))),
                                SizedBox(height:10),
                              Text("Marsh Pride is the home of Scarface Lion, who made the headlines after taking over leadership of his pride in 2012 together with his brothers Sikio, Moran, and Hunter. He injured his right eye during this take over, hence the name Scarface.",style:TextStyle(fontSize: 12,color: Colors.white)),

                               ],)),
                                 Container(
  margin: const EdgeInsets.only(left: 5),
  height: 150,
  width: 100,
  decoration: BoxDecoration(
    border: Border.all(color: Color.fromARGB(255, 234, 238, 25), width: 3),
  ),
     child: O3D(
    src: 'assets/jaguar.glb',
    controller: controller,
    ar: false,
              autoPlay: true,
           
    
  ),
)

                          ],
                         )
                   ),
              )
            ],

        )
        ),
      )

    );
  }
}