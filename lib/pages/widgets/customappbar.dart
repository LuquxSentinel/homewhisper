import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100.0,
            height: 30.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          _menu(),
          _account(),
        ],
      ),
    );
  }

  _menu() {
    return Row(
      children: [
        _menuBtn(label: "Home", onPressed: () {}),
        const SizedBox(
          width: 20.0,
        ),
        _menuBtn(label: "How it works", onPressed: () {}),
        const SizedBox(
          width: 20.0,
        ),
        _menuBtn(label: "Agent", onPressed: () {}),
        const SizedBox(
          width: 20.0,
        ),
        _menuBtn(label: "Sales", onPressed: () {}),
      ],
    );
  }

  _account() {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF7743d3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
      onPressed: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        child: Text(
          "Sign in",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _menuBtn({required String label, required VoidCallback onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
