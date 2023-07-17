import 'package:flutter/material.dart';

class NewsFeedPage extends StatelessWidget {
  final List<String> newsList = [
    'https://scontent.fdac27-2.fna.fbcdn.net/v/t39.30808-6/356900285_3326394887624414_1339067476668026696_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHnu-U7g40xwVfSkKGuwUftYe9k1nfcAWph72TWd9wBanpC4qTcYbIXrGFHzzMctR-v42mZUxFU8D3pM0HlTp1T&_nc_ohc=IEr9pjBk-K4AX8Easec&_nc_ht=scontent.fdac27-2.fna&oh=00_AfCxOndcGs3ZMeqnLIqLFrYEwTSkHYd-LaMDKo_ErC1uGg&oe=64BA6454',
    'https://scontent.fdac27-2.fna.fbcdn.net/v/t39.30808-6/356900285_3326394887624414_1339067476668026696_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHnu-U7g40xwVfSkKGuwUftYe9k1nfcAWph72TWd9wBanpC4qTcYbIXrGFHzzMctR-v42mZUxFU8D3pM0HlTp1T&_nc_ohc=IEr9pjBk-K4AX8Easec&_nc_ht=scontent.fdac27-2.fna&oh=00_AfCxOndcGs3ZMeqnLIqLFrYEwTSkHYd-LaMDKo_ErC1uGg&oe=64BA6454',
    'https://scontent.fdac27-2.fna.fbcdn.net/v/t39.30808-6/356900285_3326394887624414_1339067476668026696_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHnu-U7g40xwVfSkKGuwUftYe9k1nfcAWph72TWd9wBanpC4qTcYbIXrGFHzzMctR-v42mZUxFU8D3pM0HlTp1T&_nc_ohc=IEr9pjBk-K4AX8Easec&_nc_ht=scontent.fdac27-2.fna&oh=00_AfCxOndcGs3ZMeqnLIqLFrYEwTSkHYd-LaMDKo_ErC1uGg&oe=64BA6454',
    'https://scontent.fdac27-2.fna.fbcdn.net/v/t39.30808-6/356900285_3326394887624414_1339067476668026696_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHnu-U7g40xwVfSkKGuwUftYe9k1nfcAWph72TWd9wBanpC4qTcYbIXrGFHzzMctR-v42mZUxFU8D3pM0HlTp1T&_nc_ohc=IEr9pjBk-K4AX8Easec&_nc_ht=scontent.fdac27-2.fna&oh=00_AfCxOndcGs3ZMeqnLIqLFrYEwTSkHYd-LaMDKo_ErC1uGg&oe=64BA6454',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.network(newsList[index]),
                  ),
                );
              },
            );
          } else {
            return GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                newsList.length,
                    (index) => Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  child: Image.network(newsList[index]),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NewsFeedPage(),
  ));
}
