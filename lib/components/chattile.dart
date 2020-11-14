import 'package:flutter/material.dart';

Widget chatTile(String imgUrl, String userName, String msg, String date,
    bool seen, String mostRecentMsg) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
    child: InkWell(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 28.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        userName,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(date)
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(mostRecentMsg),
                    ),
                    Icon(seen ? Icons.check_circle : Icons.check_circle_outline,
                        size: 18.0, color: seen ? Colors.green : Colors.grey),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
