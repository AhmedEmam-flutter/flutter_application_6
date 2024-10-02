import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/conatainercommen.dart';
import 'package:flutter_application_6/views/savedproperty/savedproperty_screen.dart';

class DeatilsScreen extends StatefulWidget {
   DeatilsScreen({super.key,
   required this.image,
   required this.onSave} );
   String image ;
   final Function(String) onSave;
   

  @override
  State<DeatilsScreen> createState() => _DeatilsScreenState();
}

class _DeatilsScreenState extends State<DeatilsScreen> {
  bool isArrowDown = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Details'),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
            Icon(
              Icons.bookmark,
              color: Colors.blue[900],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: const Text(
                      'Property Details',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              Conatainercommen(
                  image:
                     widget.image,
                  text1: 'feeder house',
                  text2: '\$40000000',
                  text3: 'mohmaed ali stree in roxy',
                  text4: '(cool)',
                  text5: '22',
                  text6: '45',
                  text7: '12',
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.41),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.height * 0.33,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                          width: 53,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/imagechat/360_F_302884605_actpipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg',
                                ),
                                fit: BoxFit.fill,
                              ))),
                      title: const Text(
                        'Mohmaed Ali',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'Homeowner',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'thats lessbeb goood and enough to say',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'thats goood and enough to say let  say good ',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'thats goood and enough to say',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 9.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amenties',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down_circle_outlined)
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down_circle_outlined)
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Contruction details',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down_circle_outlined)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Location and Maps',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(isArrowDown
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down),
                      onPressed: () {
                        setState(() {
                          isArrowDown = !isArrowDown;
                        });
                      },
                    )
                  ],
                ),
              ),
              if (isArrowDown)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ), child: Text('Location Map'),
                        
                            ),
                            TextButton(onPressed: (){}, child: const Text('Hospital'),),
                            TextButton(onPressed: (){}, child: const Text('School'),),
                        
                          ]
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/map');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/imagechat/360_F_302884605_actpipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width*0.9,
                    child: ElevatedButton(onPressed: (){
                      widget.onSave(widget.image);
                        Navigator.pop(context);
                     
                    },style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      
                      
                    ), child: Text('Save',style: TextStyle(color: Colors.white),)),
                  ),
                )
            ],
          ),
        ));
  }
}
