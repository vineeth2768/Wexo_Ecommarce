import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:wexo_ecommarce/const/colors/colors.dart';
import 'package:wexo_ecommarce/const/size/size.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: baseColor,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            size: 35,
          )),
      title: TextButton(
        onPressed: () {},
        child: Row(
          children: const [
            Text(
              "Kochi",
              style: TextStyle(
                color: kWhiteColor,
              ),
            ),
            kWidth5,
            Icon(
              Icons.edit,
              color: kWhiteColor,
              size: 20,
            ),
          ],
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Color(0xFF1B1129),
              )),
        ),
        kWidth5,
        CircleAvatar(
          backgroundColor: kWhiteColor,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.wallet,
                color: baseColor,
              )),
        ),
        kWidth5,
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(5),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
          child: SearchField(
            suggestions: const [],
            searchInputDecoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              hintText: "Search any product here",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              filled: true,
              fillColor: kWhiteColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120.0);
}
