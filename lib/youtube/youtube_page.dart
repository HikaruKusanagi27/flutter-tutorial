import 'package:flutter/material.dart';

class YoutubePage extends StatelessWidget {
  const YoutubePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const _AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _CategorySection(),
            _VideoSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: '探索'),
          BottomNavigationBarItem(
            icon: Icon(Icons.control_point, size: 32),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.slow_motion_video_outlined),
            label: '登録チャンネル',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.slideshow), label: 'ライブラリ'),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
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
          const SizedBox(width: 10),
          Image.asset('images/youtubeicon.png', width: 30),
          const SizedBox(width: 5),
          const Text(
            'YouTube',
            style: TextStyle(
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
        const SizedBox(width: 10),
      ],
    );
  }
}

class _CategorySection extends StatelessWidget {
  const _CategorySection();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                _CategoryTile(
                  label: '急上昇',
                  icon: Icons.local_fire_department,
                  color: Colors.red[900],
                ),
                _CategoryTile(
                  label: '音楽',
                  icon: Icons.music_note,
                  color: Colors.teal[300],
                ),
              ],
            ),
            Row(
              children: [
                _CategoryTile(
                  label: 'ゲーム',
                  icon: Icons.gamepad,
                  color: Colors.brown[400],
                ),
                _CategoryTile(
                  label: 'ニュース',
                  icon: Icons.article,
                  color: Colors.blue[900],
                ),
              ],
            ),
            Row(
              children: [
                _CategoryTile(
                  label: '学び',
                  icon: Icons.highlight,
                  color: Colors.green[900],
                ),
                _CategoryTile(
                  label: 'ライブ',
                  icon: Icons.live_tv,
                  color: Colors.orange[800],
                ),
              ],
            ),
            Row(
              children: [
                _CategoryTile(
                  label: 'スポーツ',
                  icon: Icons.sports,
                  color: Colors.cyan[800],
                ),
                const _CategoryTile(
                  label: '',
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ],
    );
  }
}

// インナークラス　(他の箇所からアクセスできないようにする)
class _CategoryTile extends StatelessWidget {
  const _CategoryTile({
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
          children: [
            const SizedBox(width: 10),
            Icon(icon, color: Colors.white),
            const SizedBox(width: 10),
            Text(
              label,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _VideoList extends StatelessWidget {
  const _VideoList(this.data);
  final MovieInfo data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Column(
        children: [
          Image.asset(data.imagePath),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 35,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(data.iconPath),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 10),
              const Column(
                children: [
                  Icon(Icons.more_vert, color: Colors.white),
                  SizedBox(height: 14),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 54),
              Text(
                data.subTitle,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

// 1. クラスを作成
class MovieInfo {
  // サブタイトル

  MovieInfo({
    required this.imagePath,
    required this.iconPath,
    required this.title,
    required this.subTitle,
  });
  final String imagePath; // サムネイル画像のパス
  final String iconPath; // アイコン画像のパス
  final String title; // 動画タイトル
  final String subTitle;
}

// 2. ダミーデータの作成
class _VideoSection extends StatelessWidget {
  _VideoSection();

  final List<MovieInfo> _dummyMovieData = [
    MovieInfo(
      imagePath: 'images/arashiyoutube.png',
      iconPath: 'images/arashiicon.png',
      title: '"This is ARASHI LIVE 2020.12.31" Digest\nMovie',
      subTitle: 'ARASHI・127万 回視聴・1日前',
    ),
    MovieInfo(
      imagePath: 'images/arashiyoutube.png',
      iconPath: 'images/arashiicon.png',
      title: '"This is ARASHI LIVE 2020.12.31" Digest\nMovie',
      subTitle: 'ARASHI・127万 回視聴・1日前',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey[900],
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
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
        ),
        ListView.builder(
          itemCount: _dummyMovieData.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final data = _dummyMovieData[index];
            return _VideoList(data);
          },
        ),
      ],
    );
  }
}
