import 'package:flutter/material.dart';

class ResidencePage extends StatelessWidget {
  const ResidencePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _RecommendedPropertiesCard(),
            _PropertySection(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search, size: 24, color: Colors.white),
            SizedBox(height: 4),
            Text(
              '物件',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}

class _AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarWidget();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.keyboard_arrow_left, color: Colors.teal, size: 32),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200],
            ),
            child: Text(
              'おすすめ',
              style: TextStyle(
                color: Colors.teal[300],
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 10),
          Stack(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                ),
                child: Text(
                  'リフォーム',
                  style: TextStyle(
                    color: Colors.teal[300],
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(
                    minHeight: 12,
                    minWidth: 12,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add_circle, color: Colors.teal, size: 32),
          onPressed: () {},
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

class _RecommendedPropertiesCard extends StatelessWidget {
  const _RecommendedPropertiesCard();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'カウルのおすすめ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '新着3件',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '編集',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 12,
                        ),
                      ),
                      Icon(Icons.mode_edit, color: Colors.teal),
                      SizedBox(width: 15),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Icon(
                            Icons.train,
                          ),
                          SizedBox(width: 5),
                          const Text(
                            '東京駅・品川駅・川崎駅・横浜駅・目黒駅',
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Icon(
                            Icons.monetization_on,
                          ),
                          SizedBox(width: 5),
                          const Text(
                            '下限なし〜2,000万円',
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Icon(
                            Icons.info_outline,
                          ),
                          SizedBox(width: 5),
                          const Text(
                            '1R〜4LDK / 10m²以上 / 徒歩20分',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}

class _PropertyList extends StatelessWidget {
  final PropertyInfo data;
  const _PropertyList(this.data);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final imageSize = constraints.maxWidth * 0.5;
              return Row(
                children: [
                  SizedBox(
                    height: imageSize,
                    width: imageSize,
                    child: Image.asset(
                      data.imagePath,
                    ),
                  ),
                  SizedBox(
                    height: imageSize,
                    width: imageSize,
                    child: Image.asset(
                      data.madoriPath,
                    ),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      data.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      data.subTitle,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(
                      Icons.train,
                    ),
                    SizedBox(width: 5),
                    Text(
                      data.stationName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(
                      Icons.monetization_on,
                    ),
                    SizedBox(width: 5),
                    Text(
                      data.amount,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(
                      Icons.info_outline,
                    ),
                    SizedBox(width: 5),
                    Text(
                      data.floor,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2.0),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.delete_outline, color: Colors.grey),
                          SizedBox(width: 10),
                          const Text(
                            '興味なし',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2.0),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_border, color: Colors.grey),
                          SizedBox(width: 10),
                          const Text(
                            'お気に入り',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PropertyInfo {
  final String imagePath;
  final String madoriPath;
  final String title;
  final String subTitle;
  final String stationName;
  final String amount;
  final String floor;

  PropertyInfo({
    required this.imagePath,
    required this.madoriPath,
    required this.title,
    required this.subTitle,
    required this.stationName,
    required this.amount,
    required this.floor,
  });
}

class _PropertySection extends StatelessWidget {
  _PropertySection();

  final String homeImage = 'images/home.png';
  final String madoriImage = 'images/madori.png';

  final List<PropertyInfo> _data = [
    PropertyInfo(
      imagePath: 'images/home.png',
      madoriPath: 'images/madori.png',
      title: 'Rising place 川崎',
      subTitle: '2,000万円',
      stationName: '京急本線 京急川崎駅 より 徒歩9分',
      amount: '1K / 21.24m² 南西向き',
      floor: '2階/15階建 築5年',
    ),
    PropertyInfo(
      imagePath: 'images/home.png',
      madoriPath: 'images/madori.png',
      title: 'Rising place 川崎',
      subTitle: '2,000万円',
      stationName: '2,京急本線 京急川崎駅 より 徒歩9分',
      amount: '1K / 21.24m² 南西向き',
      floor: '2階/15階建 築5年',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _data.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final data = _data[index];
        return _PropertyList(data);
      },
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
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'お気に入り',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(
                Icons.message,
                color: Colors.grey,
              ),
              Positioned(
                top: -4,
                right: -4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(
                    minHeight: 12,
                    minWidth: 12,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '1',
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
          label: 'メッセージ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'マイページ',
        ),
      ],
      selectedLabelStyle: const TextStyle(
        fontSize: 10,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
      ),
      currentIndex: 0,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.grey,
      onTap: (int index) {},
    );
  }
}
