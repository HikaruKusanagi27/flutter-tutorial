import 'package:flutter/material.dart';

class YoutubePage extends StatelessWidget {
  const YoutubePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _AppBarWidget(),
      body: SingleChildScrollView(
        child: _CategoryWidget(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: '探索'),
          BottomNavigationBarItem(
              icon: Icon(Icons.control_point, size: 32), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.slow_motion_video_outlined), label: '登録チャンネル'),
          BottomNavigationBarItem(icon: Icon(Icons.slideshow), label: 'ライブラリ'),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
        currentIndex: 0,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: (int index) {},
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarWidget();

  // PreferredSizeWidgetを実装するために必要
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 170,
      backgroundColor: Colors.grey[900],
      leading: Row(
        children: [
          SizedBox(width: 10),
          Image.asset('images/youtubeicon.png', width: 30),
          SizedBox(width: 5),
          Text(
            'YouTube',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.cast, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_none, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
        SizedBox(
          width: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'images/googleaicon.png',
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

class _CategoryWidget extends StatelessWidget {
  const _CategoryWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CategoryCard(
              label: '急上昇',
              icon: Icons.local_fire_department,
              color: Colors.red[900],
            ),
            _CategoryCard(
              label: '音楽',
              icon: Icons.music_note,
              color: Colors.teal[300],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CategoryCard(
              label: 'ゲーム',
              icon: Icons.gamepad,
              color: Colors.brown[400],
            ),
            _CategoryCard(
              label: 'ニュース',
              icon: Icons.article,
              color: Colors.blue[900],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CategoryCard(
              label: '学び',
              icon: Icons.highlight,
              color: Colors.green[900],
            ),
            _CategoryCard(
              label: 'ライブ',
              icon: Icons.live_tv,
              color: Colors.orange[800],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CategoryCard(
              label: 'スポーツ',
              icon: Icons.sports,
              color: Colors.cyan[800],
            ),
            _CategoryCard(
              label: '',
              icon: null,
              color: Colors.black,
            ),
          ],
        ),
        SizedBox(height: 10),
        _VideoCard(),
      ],
    );
  }
}

// インナークラス　(他の箇所からアクセスできないようにする)
class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    required this.label,
    this.icon,
    this.color,
  });

  final String label;
  final IconData? icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: screenWidth * 0.45,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Icon(icon, color: Colors.white),
            SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _VideoCard extends StatelessWidget {
  const _VideoCard();

  final String arashiyoutube = 'images/arashiyoutube.png';
  final String arashiicon = 'images/arashiicon.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '急上昇動画',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Image.asset(arashiyoutube),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  SizedBox(
                    width: 35,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(arashiicon),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '"This is ARASHI LIVE 2020.12.31" Digest\nMovie',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Icon(Icons.more_vert, color: Colors.white),
                  SizedBox(height: 14),
                ],
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 54),
              Text(
                'ARASHI・127万 回視聴・1日前',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Image.asset(arashiyoutube),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  SizedBox(
                    width: 35,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(arashiicon),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '"This is ARASHI LIVE 2020.12.31" Digest\nMovie',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Icon(Icons.more_vert, color: Colors.white),
                  SizedBox(height: 14),
                ],
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 54),
              Text(
                'ARASHI・127万 回視聴・1日前',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
