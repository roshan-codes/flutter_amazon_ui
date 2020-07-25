import 'package:flutter/painting.dart';
import 'package:gscarousel/gscarousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
        title: Row(
          children: <Widget>[
            Icon(Icons.reorder),
            Hero(
              tag: 'logo',
              child: Container(
                padding: EdgeInsets.all(20),
                  child: Image.asset(
                    'assets/logo.jpg',
                    height: 100,
                    width: 100,
                  ),
              ),
            ),
            PopupMenuItem(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(135, 0, 0, 0),
                        child: Icon(Icons.mic)),
                    Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Icon(Icons.add_shopping_cart))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        color:Colors.black,
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Color.fromARGB(1000,56, 56, 66),
                margin: EdgeInsets.all(5),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.search),
                    title: TextField(
                      decoration: new InputDecoration(
                          hintText: 'Search', border: InputBorder.none
                      ),
                    ),
                    trailing: Icon(Icons.camera_enhance),
                  ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                        child: Icon(Icons.location_on,size: 30,color: Colors.white,),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                        child: Text('Deliver to Roshan - Ramtek 441912',style: TextStyle(color: Colors.white),))
                  ],
                ),
                color: Color.fromARGB(1000,56, 56, 66),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(child:Image.asset('assets/product3.jpg') ,radius: 25,),
                        SizedBox(height: 6,),
                        Text('Mobiles'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(child:Image.asset('assets/product4.jpg') ,radius: 25,),
                        SizedBox(height: 6,),
                        Text('Watches'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(child:Image.asset('assets/product7.jpg') ,radius: 25,),
                        SizedBox(height: 6,),
                        Text('Laptops'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(child:Image.asset('assets/product9.jpg') ,radius: 25,),
                        SizedBox(height: 6,),
                        Text('Fashion'),
                      ],
                    ),
                  ],
                ),
                color: Colors.white,
              ),
              Container(
                child: new SizedBox(
                  height: 140.0,
                  child:  GSCarousel(
                    images: [
                       NetworkImage(
                          'https://www.amazon.in/images/G/31/AMS/IN/970X250-_desktop_banner.jpg'),
                       NetworkImage(
                          'https://www.amazon.in/images/G/31/cross-site/PD2020-SMB/Actual-PC-1150X323-1X._CB409722933_.jpg'),
                       NetworkImage(
                          'https://www.amazon.in/images/G/31/cross-site/PD2020-SMB/Actual-PC-1150X323-1X._CB409722933_.jpg'),
                       NetworkImage(
                          'https://www.amazon.in/images/G/31/cross-site/PD2020-SMB/Actual-PC-1150X323-1X._CB409722933_.jpg'),
                    ],
                    indicatorSize: const Size.square(8.0),
                    indicatorActiveSize: const Size(18.0, 8.0),
                    indicatorColor: Colors.white,
                    indicatorActiveColor: Colors.redAccent,
                    animationCurve: Curves.easeIn,
                    contentMode: BoxFit.cover,
                    // indicatorBackgroundColor: Colors.greenAccent,
                  ),
                ),
              ),
              Container(
                child:Image.asset('assets/banner7.jpg'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(child:Image.network('https://www.amazon.in/images/G/31/img19/AmazonPay/Boson/Sid/Covid/Donation_186x116._SY116_CB435243930_.jpg',
                        fit: BoxFit.cover,),
                          radius: 25,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(height: 6,),
                        Text('Covid-19 Donate'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          child:Image.network('https://www.amazon.in/images/G/31/img17/AmazonPay/Ankit/gw/desktopcard/recharge_186_116._SY116_CB448565141_.jpg') ,
                          radius: 25,
                        backgroundColor: Colors.white,),
                        SizedBox(height: 6,),
                        Text('Mobil Recharge'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(child:Image.network('https://www.amazon.in/images/G/31/img17/AmazonPay/Ankit/gw/desktopcard/bills_186_116._SY116_CB448565146_.jpg')
                          ,radius: 25,
                          backgroundColor: Colors.white,),
                        SizedBox(height: 6,),
                        Text('Pay Bills'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(child:Image.network('https://www.amazon.in/images/G/31/img20/AmazonPay/Medicines_Icon_186x116_R._SY116_CB420120618_.jpg')
                          ,radius: 25,
                          backgroundColor: Colors.white,),
                        SizedBox(height: 6,),
                        Text('Medicines'),
                      ],
                    ),
                  ],
                ),
                color: Colors.white,
              ),
              Container(
                  child: Image.asset('assets/banner1.jpg'),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
