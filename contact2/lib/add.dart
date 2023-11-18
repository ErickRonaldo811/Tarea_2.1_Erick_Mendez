import 'package:flutter/material.dart';

void main() => runApp(const Add());

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Agregar contacto'),
        ),
        body:  Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             
               Padding(
                 padding: EdgeInsets.only(top: 60),
                 
                 child: CircleAvatar(
                
                  backgroundColor: Colors.blue.shade300,
                  radius: 90,
                  
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Icon(Icons.person,
                        size: (60),
                        color: Colors.white,
                        ),
                      ),
                      Text(
                        'Agregar contacto',
                        style: TextStyle(
                          
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],

                    



                  ),
                   
              ),
               ),

                const  Padding(
                 padding: EdgeInsets.all(10),
                 child: TextField(

                  decoration: InputDecoration(
       
               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(15)),
               ),
                    hintText: "Nombre",
                    icon: Icon(Icons.person),
               
                  ),
                 ),
               ),

              const  Padding(
                 padding: EdgeInsets.all(10),
                 child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    
                  enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                 ),
               
                    hintText: "Telefono",
                    icon: Icon(Icons.call),
                    
                    
               
                  ),
                 ),
               ),

                const Padding(
                 padding: EdgeInsets.all(10),
                 child: TextField(  
                  keyboardType: TextInputType.emailAddress,
               
                  decoration: InputDecoration(
                   
                    enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                   
               
                    hintText: "Correo Electronico",
                    icon: Icon(Icons.email),
               
                  ),
                 ),
               ),

                 const Padding(
                 padding: EdgeInsets.all(10),
                 child: TextField(

                  decoration: InputDecoration(
                   
                   
               enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))
               ),
                    hintText: "Empresa",
                    icon: Icon(Icons.person),
               
                  ),
                 ),
               ),


              
            ],

            
          ),
       
        ),
           
      ),
    );
  }
}