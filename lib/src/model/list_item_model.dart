class ListItem {
  final String img;
  final String title;
  final String userName;
  final int like;
  final int reple;

  ListItem(
      {required this.img,
      required this.title,
      required this.userName,
      required this.like,
      required this.reple});
}

final List<ListItem> listItem = [
  ListItem(
      img:
          'https://image.aladin.co.kr/product/16839/4/cover/k492534773_1.jpg',
      title: '아몬드',
      userName: '꿈꾸는 곰돌이',
      like: 4,
      reple: 2),
  ListItem(
      img:
          'https://image.aladin.co.kr/product/32896/32/cover500/k402936527_1.jpg',
      title: '비가 오면 열리는 상점',
      userName: '책벌레',
      like: 4,
      reple: 1),
  ListItem(
      img:
          'https://image.aladin.co.kr/product/24129/29/cover500/8937420546_1.jpg',
      title: '여름을 지나가다',
      userName: '밍주123',
      like: 6,
      reple: 2),
  ListItem(
      img:
          'https://image.aladin.co.kr/product/32761/46/cover500/8984374695_1.jpg',
      title: '마지막 거짓말',
      userName: '현서99',
      like: 5,
      reple: 3),
  ListItem(
      img:
          'https://image.aladin.co.kr/product/32633/93/cover500/k702935553_2.jpg',
      title: '슈뢰딩거의 소녀',
      userName: '은빈하트',
      like: 9,
      reple: 1),
];
