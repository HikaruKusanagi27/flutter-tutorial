import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/youtube/ui/youtube_state.dart';
import 'package:test/youtube/ui/youtube_view_model.dart';

class YoutubePage extends StatelessWidget {
  const YoutubePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const _AppBarWidget(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            _CategorySection(),
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

class _VideoScreen extends StatelessWidget {
  const _VideoScreen(this.data);
  final YoutubeItem data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Column(
        children: [
          // Image.network(
          //   data.imagePath,
          // ),
          Image.asset('images/arashiyoutube.png'),
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
                      child: Image.network(data.iconPath),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    data.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
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
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${data.channelName}・${data.numOfViews}万回視聴'
                    '・${data.daysAgo}日前',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// 2. ダミーデータの作成
class _VideoSection extends ConsumerStatefulWidget {
  // できればConsumerStatefulWidgetをつかはない方が良い
  const _VideoSection();

  @override
  ConsumerState<_VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends ConsumerState<_VideoSection> {
  @override
  void initState() {
    super.initState();
    // 初期データ取得
    Future(() {
      ref.read(youtubeViewModelProvider.notifier).fetchYoutubeItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(youtubeViewModelProvider);
    final notifier = ref.read(youtubeViewModelProvider.notifier);
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
        if (state.isLoading)
          const Center(
            child: Column(
              children: [
                CircularProgressIndicator(),
              ],
            ),
          )
        else if (state.isReadyData && state.youtubeItems.isNotEmpty)
          ListView.builder(
            itemCount: state.youtubeItems.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final data = state.youtubeItems[index];
              return _VideoScreen(data);
            },
          )
        else
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('データを取得できませんでした', style: TextStyle(color: Colors.white)),
            ],
          ),
      ],
    );
  }
}
