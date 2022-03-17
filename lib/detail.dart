import 'package:flutter/material.dart';
import 'package:hotel/data_hotel.dart';

class DetailPage extends StatelessWidget {
  final DataHotel hotel;

  DetailPage({required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(hotel.name)
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: hotel.imageUrl.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                hotel.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                "Bintang ${hotel.stars}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                hotel.location,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                "Harga per Kamar: ${hotel.roomPrice}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                "Link Pemesanan",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.wifi),
                      SizedBox(height: 8.0),
                      Text('Free Wifi'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.local_parking),
                      SizedBox(height: 8.0),
                      Text('Free Parking'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.pool),
                      SizedBox(height: 8.0),
                      Text('Swimming Pool'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.restaurant),
                      SizedBox(height: 8.0),
                      Text('Restauran'),
                    ],
                  ),
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Halaman Website"),
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}