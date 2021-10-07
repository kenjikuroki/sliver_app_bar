import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  double _textScale = 1.0;
  bool _isLarge = false;

  @override
  Widget build(BuildContext context) {

    void _toggleLargeFont(bool isLarge) {
      isLarge ? _textScale =1.2 : _textScale = 1.0;
      setState(() {
        _isLarge = isLarge;
      });
    }

    return MediaQuery(
          data: MediaQuery.of(context).copyWith(
          textScaleFactor: _textScale
      ),
      child: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Colors.blueAccent.withOpacity(0.3),
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 180,
            toolbarHeight: 60,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('記事カテゴリー'),
              background: Stack(
                  children:[
                    Container(
                      width: double.infinity,
                      child: Image.network(
                        'https://images.pexels.com/photos/267392/pexels-photo-267392.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            stops: [0.5, 1],
                            colors: [
                              Colors.grey.withOpacity(0),
                              Colors.black38,
                            ]
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('文字を大きく'),
                        Switch(
                          value: _isLarge,
                          onChanged: _toggleLargeFont,
                        ),
                      ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Sept. 29 2020',
                              style: GoogleFonts.lato(),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.share,
                              color: Colors.blueAccent,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Text('記事タイトル記事タイトル記事タイトルaaaaaadsjaksdjflasjdflkasdjflkasjdflkajsdlkfjalskdjflkasjdflkasjdflkasjdflkjasdlkfjalskdjflaksdjflkasdjflkasdjflkasjdflkasjdflkajsdlfk'),
                      Divider(
                        height: 30,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                            radius: 26,
                            backgroundColor: Colors.grey[200],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('山田　太郎'),
                              Text('ITジャーナリスト'),
                            ],
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '350',
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            Icons.comment,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '25',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'アイウエオこうんいい行奥羽rあって朦朧うううおsとう'
                            '血動づうち'
                            'asdasdasf'
                            'asdasdasdasdasdasd'
                            'asdasdasdasdasdasd'
                            'asdasdafjalkdjflkasjdflkasjdflkajsdflkjasdlfja'
                            'laskjdflkajsdflkjasdlkfjalskdjflaksdf'
                            'alksdjflkajsdflkjasdlkfjalksdjflkasdjfa'
                            'alksdjflkasjdflkasjdflkasdjflkasdjflad'
                            'lkasdjflkasjdfklajsdflkjasdklfjaslkdjfas'
                            'askdjflaksjdflkasjdflkasjdflkasjdflkajsdf'
                            'asjdflkajsdflkjasdlkfjalsdjflakdjfa'
                            'alsdjflaksdjflkasjdflasdjflkasjdflkasd'
                            'asldkjflasdjflaksjdflkasdjflkasjdf'
                            'alskdjflkasjdflkasjflkasjdflkasjdflkasdf'
                            'asldkjflaskdjflaksdjflasdjflkasjdfa'
                            'aslkdjflasjdflasdjflaksjdflkasjdflkasdf'
                            'asldjflasdjflasdjflaksdjflkasjdflkasdjf'
                            'asldkjflasjdflasjdflaksjdflkasjdflkajsf'
                            'aslkdjflasjdflkasdjflaksjdflkasjdflkajdf'
                            'asldkfjalsdjflaksdjflkakdjflkasdjflkasjdf'
                            'asldkfjlasdjflkasdjflaskdjflaksjdflkasdjflasdkf'
                            'aslkdjflaksjdflaksjdflaskdjflaskdjflkasdf'
                            'asdlfjlaksdjflakskjdflaksdjflkasdjfladf'
                            'asdlkfjasldjflaskdjflaksjdflkasjdf'
                            'asdflkasdjflkasjdflkasjdflkasdf'
                            'aslkdjflaskjdflkasjdflkajsdlkfa'
                            'dsfjalskdjflkasdjflkasjdflkasdjdf'
                            'awdfkjasdlfkjaslkjdflaksdjf'
                            'sdfjlasdjflaksjdflkasjdflask'
                            'sdasdasdasd'
                            'asdasdasdasdasdasgasdgadfgaedfasdfa'
                            'asdfafasdfasdfawfasdfasdtergasdf'
                            'asdfrwaefasdfawetawefawerqewf'
                            'jlakjfd/*/*/lkajsdflkjalsdkjflkajsdflkajsldkfjlaksjdflkajsdlfk',
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
