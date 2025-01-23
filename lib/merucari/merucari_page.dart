import 'package:flutter/material.dart';

class MerucariPage extends StatelessWidget {
  const MerucariPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const appTitle = '出品';
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            appTitle,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: const SingleChildScrollView(
          child: Column(
            children: [
              _CategorySection(),
              _ExhibitionSection(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.deepOrange[600],
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt_outlined, size: 24, color: Colors.white),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}

class _CategorySection extends StatelessWidget {
  const _CategorySection();

  String get howToStartSellingImage => 'images/how_to_start_selling.png';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = (screenWidth - 10 * 5) / 4;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(
            howToStartSellingImage,
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Text(
                '出品へのショートカット',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 30,
                    ),
                    SizedBox(height: 5),
                    Text(
                      '写真を撮る',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Icon(
                      Icons.image,
                      size: 30,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'アルバム',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Icon(
                      Icons.line_weight,
                      size: 30,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'バーコード\n(本・コスメ)',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.content_paste,
                      size: 30,
                    ),
                    SizedBox(height: 5),
                    Text(
                      '下書き一覧',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ExhibitionSection extends StatelessWidget {
  const _ExhibitionSection();

  String get cameraImage => 'images/camera.png';

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '売れやすい持ち物',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '使わないモノを出品してみよう！',
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'すべてを見る＞',
                          style: TextStyle(
                            color: Colors.blue[500],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey[300],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      cameraImage,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'sony a7iii',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '¥5555.0',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.local_fire_department,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Text(
                                '800人が探しています',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '出品する',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      cameraImage,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'sony a7iii',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '¥5555.0',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.local_fire_department,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Text(
                                '800人が探しています',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '出品する',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      cameraImage,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'sony a7iii',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '¥5555.0',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.local_fire_department,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Text(
                                '800人が探しています',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '出品する',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      cameraImage,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'sony a7iii',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '¥5555.0',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.local_fire_department,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Text(
                                '800人が探しています',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '出品する',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      cameraImage,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'sony a7iii',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '¥5555.0',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.local_fire_department,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Text(
                                '800人が探しています',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '出品する',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      cameraImage,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'sony a7iii',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '¥5555.0',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.local_fire_department,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Text(
                                '800人が探しています',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '出品する',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(
                Icons.home_filled,
                color: Colors.blue,
              ),
              Positioned(
                top: -6,
                right: -6,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minHeight: 15,
                    minWidth: 15,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '5',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          label: 'ホーム',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_outlined),
          label: 'お知らせ',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt_outlined, color: Colors.grey),
          label: '出品',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.add_comment_outlined,
            color: Colors.grey,
          ),
          label: 'メッセージ',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'マイページ',
        ),
      ],
      selectedLabelStyle: const TextStyle(
        fontSize: 10,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
      ),
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (int index) {},
    );
  }
}
