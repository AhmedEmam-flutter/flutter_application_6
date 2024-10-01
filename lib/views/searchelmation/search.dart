import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  Search({super.key});
  List iamge = [
    'assets/imagesbuilderscreen/pexels-binyaminmellish-106399.jpg',
    'assets/imagesbuilderscreen/pexels-expect-best-79873-323780.jpg',
    'assets/imagesbuilderscreen/pexels-pixabay-53610.jpg',
    'assets/imagesbuilderscreen/pexels-pixabay-259588.jpg',
    'assets/imagesbuilderscreen/Untitled-design-2019-11-15T160558.776.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Search Elimantion',
            style: TextStyle(color: Colors.black),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
              
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          actions: [
            Icon(
              Icons.bookmark,
              color: Colors.blue[900],
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/total');
                
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.blue[900],
                          size: 30,
                        ),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Deplux House',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 10, color: Colors.blue[900]),
                    ],
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: ListView.builder(
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        width: 100,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(iamge[index]),
                                fit: BoxFit.fill)),
                      ),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Houses',
                                style: TextStyle(color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[900],
                            )),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Outside Walls',
                            style: TextStyle(color: Colors.orange),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Others',
                            style: TextStyle(color: Colors.green),
                          ))
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/imagesbuilderscreen/pexels-pixabay-259588.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Deplux House(2000 sqft)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/total');
                  }, child: Text('Estimated cast',style: TextStyle(color: Colors.white),)
                  ,style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                  ),)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
