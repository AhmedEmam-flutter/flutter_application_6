import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/alllbuilders/widgets/listhome.dart';
import 'package:flutter_application_6/views/alllbuilders/widgets/listtitle.dart';

class AllbuldersScreen extends StatelessWidget {
  AllbuldersScreen({super.key});
  List name = [
    'Hassan',
    'Ahmed',
  ];
  List iamge = [
    'assets/imagesbuilderscreen/pexels-pixabay-53610.jpg',
    'assets/imagesbuilderscreen/pexels-expect-best-79873-323780.jpg',
    'assets/imagesbuilderscreen/pexels-pixabay-53610.jpg',
    'assets/imagesbuilderscreen/Untitled-design-2019-11-15T160558.776.jpg',
  ];
  List iamgetwo = [
    'assets/imagesbuilderscreen/istockphoto-175259322-612x612.jpg',
    'assets/imagesbuilderscreen/istockphoto-1442148484-612x612.jpg',
    'assets/imagesbuilderscreen/istockphoto-178559422-612x612.jpg',
    'assets/imagesbuilderscreen/Untitled-design-2019-11-15T160558.776.jpg',
  ];
  List iamgethree = [
    'assets/imagesbuilderscreen/istockphoto-178559422-612x612.jpg',
    'assets/imagesbuilderscreen/Luxury-homes-in-Dallas.jpg',
    'assets/imagesbuilderscreen/nathan-walker-Sv4btqhcYqw-unsplash.jpg',
    'assets/imagesbuilderscreen/Untitled-design-2019-11-15T160558.776.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('All Builders'),
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/setting');
                },
                child: Icon(Icons.arrow_forward)),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search, color: Colors.purple),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Listtitle(
                name: 'Norhan',
                iamge:
                    'assets/imageallbuilders/pngtree-blonde-girl-smiling-holding-book-pose-illustration-png-image_1634601.jpg',
                icon: Icon(Icons.favorite_outline),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      Listhome(image: iamge[index]),
                  itemCount: iamge.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Listtitle(
                name: 'Hassan',
                iamge:
                    'assets/imagechat/asian-group-of-young-people-with-friends-and-backpacks-walking-together-and-happy-friends-are-taking-and-selfie-relax-time-on-holiday-concept-travel-free-photo.jpg',
                icon: Icon(Icons.favorite_outline),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      Listhome(image: iamgetwo[index]),
                  itemCount: iamgetwo.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Listtitle(
                name: 'Nada',
                iamge:
                    'assets/imageallbuilders/png-transparent-woman-pointing-left-side-while-smiling-woman-smile-female-information-woman-hand-people-arm-thumbnail.png',
                icon: Icon(Icons.favorite_outline),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      Listhome(image: iamgethree[index]),
                  itemCount: iamge.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
