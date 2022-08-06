import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String  _selectedItem = "";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      // appBar: AppBar(
      //   title: Container(
      //     child: Text('GetCharge'), ),
      // ),
      body: Stack(
        children: [
          Expanded(
            child: Image.asset("assets/a.png", fit:BoxFit.fitWidth, width: 6000,)
          ),
          Expanded(
            child: Container(padding: const EdgeInsets.fromLTRB(21, 0.0, 18.0, 20.0),
            child: 
              Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        borderRadius: const BorderRadius.all(
                          Radius.circular(100),
                        ), 
                      ),
                      child: 
                      IconButton( onPressed: () => _onButtonPressed(), icon: Icon(Icons.menu_open)),),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.blue, 
                        borderRadius: const BorderRadius.all(
                          Radius.circular(100),
                        ), 
                      ),
                      child: 
                      IconButton(onPressed: (){}, icon: Icon(Icons.qr_code), color: Colors.white, iconSize: 35,),),
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        borderRadius: const BorderRadius.all(
                          Radius.circular(100),
                         
                        ), 
                      ),
                      child: 
                      IconButton(onPressed: (){}, icon: Icon(Icons.navigation)),),        
                  ],
                )
              ],
            )
            ,)
          ),
        ], 
        ),
      )
    );
  }
  
  void _onButtonPressed(){
    showModalBottomSheet(
        isScrollControlled: true,
        context: context, 
        builder: (context){
          return Container(
            
            color: Color(0xFF737373),
            child: Container(
              child: _buildBottomNavigator(),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 245, 245, 245),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(17),
                  topRight: Radius.circular(17),
                
                ),
              ),
            ),
          ); 
        });
  }
  Column _buildBottomNavigator() {
          return Column(
             mainAxisSize: MainAxisSize.min,
            children: [Container(
              margin: EdgeInsets.only(left: 18, right: 18),
              
          child:
          Column(
           
             mainAxisAlignment: MainAxisAlignment.end,
            children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text('Меню', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),),
                    
                    Container(
                    
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.fromLTRB(15, 18, 15, 18),
                    decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Профиль', style: TextStyle(fontWeight: FontWeight.bold)), 
                          Text('+7 925 555-XX-XX'),
                        ],
                      ),
                    ),
                      Container(
                      child: 
                        Column(
                          children: [
                            CircleAvatar(
                            backgroundColor: Colors.blue,
                            ),
                          ],
                        )) 
                    ])
                    ,),           
                    
                    Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.fromLTRB(15, 18, 15, 18),
                    decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('История аренд', style: TextStyle(fontWeight: FontWeight.bold)), 
                          
                        ],
                      ),
                    ),
                      Container(
                      child: 
                        Column(
                          children: [
                            CircleAvatar(
                            backgroundColor: Colors.blue,
                            ),
                          ],
                        )) 
                    ])
                    ,), 
                    
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Expanded(child: 
                        Container(
                          margin: EdgeInsets.only(right: 6),
                          // padding: EdgeInsets.all(20),
                          padding: EdgeInsets.fromLTRB(15, 18, 15, 18),
                          decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,),
                          child: 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                            ),
                            Container(
                               padding: EdgeInsets.only(top: 50),
                              child: Text('Бонусы', style: TextStyle(fontWeight: FontWeight.bold)),)
                          
                          ]),
                        
                        ),
                        flex: 1,
                        ),
                        

                        Expanded(
                          child:Container(
                          margin: EdgeInsets.only(left: 6),
                          // padding: EdgeInsets.all(20),
                          padding: EdgeInsets.fromLTRB(15, 18, 15, 18),
                          decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,),
                          child: 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 50),
                              child: Text('О приложении', style: TextStyle(fontWeight: FontWeight.bold)),),
                            
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                            ),
                           
                          ]),
                          
                        ),
                        flex: 1,
                        )
                        
                      ]),
                    ),
                  
                    Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.fromLTRB(15, 18, 15, 18),
                    decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Чат поддержки', style: TextStyle(fontWeight: FontWeight.bold)), 
                          Text('Пишите в любое удобное для вас время'),
                        ],
                      ),
                    ),
                      Container(
                      child: 
                        Column(
                          children: [
                            CircleAvatar(
                            backgroundColor: Colors.blue,
                            ),
                          ],
                        )) 
                    ])
                    ,),  
                  
                    Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    padding: EdgeInsets.fromLTRB(15, 18, 15, 18),
                    decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Что-то ещё', style: TextStyle(fontWeight: FontWeight.bold)), 
                          
                        ],
                      ),
                    ),
                      Container(
                      child: 
                        Column(
                          children: [
                            CircleAvatar(
                            backgroundColor: Colors.blue,
                            ),
                          ],
                        )) 
                    ])
                    ,), 
                  ],
            
          )  
             
            ),
            ]
            );
          
        }
  
  // void selectedItem (String name){
  //   Navigator.pop(context);
  //   setState((){
  //     _selectedItem = name;
  //   });

  // }

}
