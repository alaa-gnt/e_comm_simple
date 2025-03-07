import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
   
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(top: 100 , bottom: 100 , right: 20 , left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Image.asset("lib/images/Nike.png"), 
              Container(
                child: Column(
                  children: [
                   Text("just Do it" , style: 
              TextStyle(
                color: Colors.black , 
                fontWeight: FontWeight.bold, 

              ),),


               SizedBox(height: 20,),

              Text(" is the right place for u to shop and find ur new sniker " ,
               style:
              TextStyle(
                color: Colors.grey , 
                fontWeight: FontWeight.bold, 
              ),
              textAlign: TextAlign.center,
              
              ),

              SizedBox(height: 20,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black , 
                   minimumSize: Size(200, 50),
                ) , 
                onPressed: () { 
                  Navigator.pushNamed(context, '/shop');
                },
               child: Text("shop now " , style: TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold,
               ),) ) 
                  ],
                ),
              )
              
            ],
          ),
        ),
      );
  }
}