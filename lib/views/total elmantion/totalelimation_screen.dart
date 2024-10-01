import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/history/widget/containerhistory.dart';
import 'package:flutter_application_6/views/total%20elmantion/widget/continertotal.dart';

class TotalelimationScreen extends StatelessWidget {
   TotalelimationScreen({super.key});
  List list = [
    'assets/totalimages/istockphoto-173627444-612x612.jpg',
    'assets/totalimages/360_F_270540128_SbIbnPpRno7A3BcZlO8gNqAjjKPJzYwI.jpg',
    'assets/totalimages/istockphoto-1373109351-612x612.jpg',
    'assets/totalimages/istockphoto-1448349078-612x612.jpg',
    'assets/totalimages/istockphoto-173627444-612x612.jpg',
  ];
  List name = [
    'Brickstotal',
    'RodesTotal',
    'SandTotal',
    'CementTotal',
    'Brickstotal',
  ];
  List price = [
    '\$ 1000000',
    '\$ 2000000',
    '\$ 3000000',
    '\$ 4000000',
    '\$ 5000000',
    
  ];
  List size = [
    '100t0n(perton\$2000)',
    '200t0n(perton\$4000)',
    '300t0n(perton\$6000)',
    '400t0n(perton\$8000)',
    '500t0n(perton\$10000)',
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Total Elemention'),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
              
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/all');
              },
              child: Icon(
                Icons.arrow_forward,
                color: Colors.blue[900],
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Stack(
          children: [
            
            Positioned(
              top: MediaQuery.of(context).size.height * 0.01,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.72,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < list.length; i++)
                    Center(child: Conttotal(image: list[i], name: name[i], price: price[i], size: size[i])),
                ],
              ),
              
              ),
            ),
         
             Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.12,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: ElevatedButton(onPressed: (){}, child: Text('Hire Builders',style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 58, 33, 243)),)),
                            Column(
                              children: [
                                Text('Total elmainatin',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('\$ 12000000',style: TextStyle(color: Color.fromARGB(255, 58, 33, 243),fontWeight: FontWeight.bold,fontSize: 20),),
                              ],
                            )                        
                        ],
                      ),
                    ),
                  ),
                )
          ],
        ));
  }
}
