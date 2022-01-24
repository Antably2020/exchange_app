import 'package:exchange_app/models/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:exchange_app/models/item.dart';

class Product_Description extends StatefulWidget {
  final Product myData;

  Product_Description(this.myData);

  @override
  _Product_DescriptionState createState() => _Product_DescriptionState();
}

class _Product_DescriptionState extends State<Product_Description> {
  double rating = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        titleSpacing: 0,
        title: new Text(
          "Description",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: new BoxDecoration(color: Colors.white),
                    ),

                    // Main Body

                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Stack(
                                      children: <Widget>[
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 0, 0, 0),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffffff),
                                            image: new DecorationImage(
                                              image: ExactAssetImage(
                                                  "assets/car.jpg"),
                                              fit: BoxFit.fill,
                                            ),
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 8,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          width: double.infinity,
                                          height: 200,
                                        ),
                                        /*  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 1,
                                              color: Colors.grey,
                                              spreadRadius: 3)
                                        ],
                                      ),
                                      margin:
                                          EdgeInsets.fromLTRB(260, 170, 20, 20),
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          child: IconTheme(
                                            data: IconThemeData(
                                                color: Colors.red),
                                            child: Icon(
                                              Icons.favorite,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),*/
                                      ],
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 10, 0, 20),
                                      child: Text("${widget.myData.title}",
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Oswald",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 30.0)),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 0, 0, 20),
                                        ),
                                        StarRating(
                                          rating: rating,
                                          onRatingChanged: (rating) => setState(
                                              () => this.rating = rating),
                                        ),
                                        Text('(500 reviews)'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 20, 0, 20),
                                      child: Text(
                                        'Description',
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Poppins",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 20.0,
                                        ),
                                        //   textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 0, 0, 20),
                                      child: Text(
                                        "${widget.myData.description}",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15.0,
                                        ),
                                        //   textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            height: 50,
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: ElevatedButton(
                              child: Text('Make Offer'),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, '/'); // Nehot route el home page
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 12, 242, 180),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            )),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(0, 55, 0, 0),
                          child: Center(
                            child: CircularProfileAvatar(
                              '',
                              child: Container(
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: ExactAssetImage('assets/egypt.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                width: double.infinity,
                                height: 200,
                              ),
                              borderWidth: 3,
                              elevation: 10,
                              radius: 35,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Center(
                            child: Text(
                              'Mahmoud Zoair',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 100),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          nav_bar_widget(),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color? color;

  StarRating(
      {this.starCount = 5, this.rating = .0, this.onRatingChanged, this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: Theme.of(context).buttonColor,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: Colors.yellow,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: Colors.yellow,
      );
    }
    return new InkResponse(
      // onTap: onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
        children:
            new List.generate(starCount, (index) => buildStar(context, index)));
  }
}
