import 'package:flutter/material.dart';

class BuilderScreen extends StatelessWidget {
  BuilderScreen({super.key});
  List home = [
    'assets/imagesbuilderscreen/pexels-binyaminmellish-106399.jpg',
    'assets/imagesbuilderscreen/pexels-expect-best-79873-323780.jpg',
    'assets/imagesbuilderscreen/pexels-pixabay-53610.jpg',
    'assets/imagesbuilderscreen/pexels-pixabay-259588.jpg',
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            leading: InkWell(
               onTap: () {
              Navigator.pop(context);
              
            },
              child: Icon(Icons.arrow_back_ios_new_outlined)),
            title: Text(' builder Profile'),
            actions: [
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/artifical');
                  },
                  child: Icon(Icons.arrow_forward)),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.11,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: ListTile(
                leading: Container(
                    width: 53,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/imagechat/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg',
                          ),
                          fit: BoxFit.fill,
                        ))),
                title: Text('Ned Stark'),
                subtitle: Text(
                  'aemam3737@gamil.com',
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'call');
                  },
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.green[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.phone,
                        color: Colors.green,
                      )),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.21,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'protfolio',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.24,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.20,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage(home[index]),
                          fit: BoxFit.fill,
                        )),
                  );
                },
                itemCount: home.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/imagesbuilderscreen/Untitled-design-2019-11-15T160558.776.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width * 0.3,
            child: Container(
                child: Text(
              'UBAN LANSCAPE',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            )),
          ),
        ],
      ),
    );
  }
}
