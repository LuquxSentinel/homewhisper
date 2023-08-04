import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homewhisper/pages/common/content.dart';
import 'package:homewhisper/pages/widgets/customappbar.dart';
import 'package:homewhisper/types/rental_property.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Content(child: CustomAppBar()),
              const SizedBox(
                width: 64.0,
              ),
              Header(size: size),
              const SizedBox(
                height: 64.0,
              ),
              WhatDoWeDO(size: size),
              const SizedBox(
                height: 64.0,
              ),
              MostPopular(size: size)
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: 400.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: const DecorationImage(
          image: AssetImage(
            "assets/header.jpg",
          ),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Let's find a home\nthat's perfect for you",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 44.0,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            "Search confidently with your trusted source of homes for sale or rent.",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          SearchBar(size: size),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 4.0, left: 20.0),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter an address, neighborhood, city or Zip code",
                  border: InputBorder.none,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF7743d3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 12.0,
                ),
                child: Text(
                  "Search",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WhatDoWeDO extends StatelessWidget {
  const WhatDoWeDO({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 350.0,
          child: Stack(
            children: [
              Container(
                height: 300.0,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xFF5d41ff).withOpacity(0.05),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 32.0, horizontal: 64.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EHM. SO?",
                        style: TextStyle(
                          color: Color(0xFF7743d3),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "What we do",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text("Full-Service Agents, Moderm Technology")
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 64.0,
                right: 64.0,
                child: _ourservices(),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 64.0,
        ),
        SizedBox(
          width: size.width * 0.9,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64.0),
            child: Column(
              children: [
                const Text(
                  "Move to What Moves You",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text("Keep calm & travel on"),
                const SizedBox(
                  height: 32.0,
                ),
                _propertieCatelog(),
              ],
            ),
          ),
        )
      ],
    );
  }

  _propertieCatelog() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _catelog(title: "Enjoy the great cold", image: "assets/im2.jpg"),
        _catelog(
            title: "Pick up the earliest sunrise", image: "assets/im3.jpg"),
        _catelog(title: "Unique stay", image: "assets/im4.jpg"),
      ],
    );
  }

  _catelog({required String title, required String image}) {
    return SizedBox(
      width: 300.0,
      height: 450,
      child: Column(
        children: [
          Container(
            height: 350,
            width: 300.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "6,892 properties",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _ourservices() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _service(
            title: "Communication",
            description:
                "Single point of contact, in sync with the tools you use, We speak your language.",
            icon: const Icon(
              Icons.chat_bubble_rounded,
            )),
        // const SizedBox(
        //   width: 8.0,
        // ),
        _service(
            title: "Reliabity",
            description:
                "We keep our promises, privide upfront timelines and bring predictability",
            icon: const Icon(Icons.shield)),
        // const SizedBox(
        //   width: 8.0,
        // ),
        _service(
            title: "Quality",
            description:
                "Quality first. All projects are backen by our fanatic supports & 100% satisfaction guarantee",
            icon: const Icon(Icons.auto_awesome)),
        // const SizedBox(
        //   width: 8.0,
        // ),
        _service(
          title: "Familities",
          description:
              "Rent a beautiful house for your family. Choose from flats in societies and individual apartments",
          icon: const Icon(
            Icons.family_restroom_rounded,
          ),
        )
      ],
    );
  }

  _service(
      {required String title,
      required String description,
      required Icon icon}) {
    return Container(
      width: 260.0,
      height: 200.0,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 28.0,
              backgroundColor: const Color(0xFF5d41ff).withOpacity(0.1),
              child: icon,
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16.0, color: Colors.black87),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

class MostPopular extends StatelessWidget {
  MostPopular({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: const Color(0xFF5d41ff).withOpacity(0.05),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 64.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Book Now!",
              style: TextStyle(
                color: Color(0xFF7743d3),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              "Popular Rentals",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black87,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                const Text("Homes Loved by Renters"),
                TextButton(onPressed: () {}, child: Text("See more", style: TextStyle(
                  color: Colors.
                ),),)
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            _properties(),
          ],
        ),
      ),
    );
  }

  final List<RentalProperty> _properyList = [
    RentalProperty(
        name: "The Grand Estate",
        location: "JHB, 121B",
        pricePerDay: 521,
        image: "assets/im1.jpg"),
    RentalProperty(
        name: "Hotel Estate",
        location: "JHB, 121B",
        pricePerDay: 412,
        image: "assets/im2.jpg"),
    RentalProperty(
        name: "The Great Hotel",
        location: "JHB, 121B",
        pricePerDay: 261,
        image: "assets/im3.jpg"),
    RentalProperty(
        name: "Voxy Estate",
        location: "JHB, 121B",
        pricePerDay: 652,
        image: "assets/im4.jpg"),
  ];

  _properties() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (RentalProperty property in _properyList)
          _property(property: property)
      ],
    );
  }

  _property({required RentalProperty property}) {
    return Container(
      width: 250.0,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage(property.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    property.name,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        property.location,
                        style: TextStyle(fontSize: 13.0),
                      ),
                      Text(
                        "R${property.pricePerDay}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7743d3)),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
