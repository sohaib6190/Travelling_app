import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class City {
  final String name;
  final String title;
  final String description;
  final Color color;
  final List<Hotel> hotels;

  City({
    required this.title,
    required this.name,
    required this.description,
    required this.color,
    required this.hotels,
  });
}

class Hotel {
  final String name;
  final double rating;
  final int reviews;
  final int price;

  Hotel(this.name, {required this.reviews, required this.price, required this.rating});
}

class DemoData {
  List<City> _cities = [
    City(
      name: 'Pisa',
      title: 'Pisa, Italy',
      description: 'Discover a beautiful city where ancient and modern meet',
      color: Color(0xffdee5cf),
      hotels: [
        Hotel('Hotel Bologna', reviews: 201, price: 120, rating: 4),
        Hotel('Tree House', reviews: 85, price: 98, rating: 5),
        Hotel('Allegroitalia Pisa Tower Plaza', reviews: 128, price: 119, rating: 4),
      ],
    ),
    City(
      name: 'Budapest',
      title: 'Budapest, Hungary',
      description: 'Meet the city with rich history and indescribable culture',
      color: Color(0xffdaf3f7),
      hotels: [
        Hotel('Hotel Estilo Budapest', reviews: 762, price: 87, rating: 5),
        Hotel('Danubius Hotel', reviews: 3122, price: 196, rating: 3),
        Hotel('Golden Budapest Condominium', reviews: 213, price: 217, rating: 5),
      ],
    ),
    City(
      name: 'London',
      title: 'London, England',
      description: 'A diverse and exciting city with the world’s best sights and attractions!',
      color: Color(0xfff9d9e2),
      hotels: [
        Hotel('InterContinental London Hotel', reviews: 1624, price: 418, rating: 3),
        Hotel('Brick Lane Hotel', reviews: 101, price: 101, rating: 4),
        Hotel('Park Villa Boutique House', reviews: 161, price: 128, rating: 5),
      ],
    ),
  ];

  List<City> getCities() => _cities;
}

class Styles {
  static const double hzScreenPadding = 18;

  static final TextStyle baseTitle = TextStyle(fontSize: 11, fontFamily: 'DMSerifDisplay');
  static final TextStyle baseBody = TextStyle(fontSize: 11, fontFamily: 'OpenSans');

  static final TextStyle appHeader = baseTitle.copyWith(color: Color(0xFF0e0e0e), fontSize: 36, height: 1);

  static final TextStyle cardTitle = baseTitle.copyWith(height: 1, color: Color(0xFF1a1a1a), fontSize: 25);
  static final TextStyle cardSubtitle = baseBody.copyWith(color: Color(0xFF666666), height: 1.5, fontSize: 12);
  static final TextStyle cardAction =
  baseBody.copyWith(color: Color(0xFFa6998b), fontSize: 10, height: 1, fontWeight: FontWeight.w600, letterSpacing: 0.1);

  static final TextStyle hotelsTitleSection = baseBody.copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold, height: 2);
  static final TextStyle hotelTitle = baseBody.copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600);
  static final TextStyle hotelPrice = baseBody.copyWith(color: Color(0xff4d4d4d), fontSize: 13);
  static final TextStyle hotelScore = baseBody.copyWith(color: Color(0xff0e0e0e));
  static final TextStyle hotelData = baseBody.copyWith(color: Colors.grey[700]);
}

class TravelCardRenderer extends StatelessWidget {
  final double offset;
  final double cardWidth;
  final double cardHeight;
  final City city;

  const TravelCardRenderer(
      this.offset, {
        Key? key,
        this.cardWidth = 250,
        required this.city,
        required this.cardHeight,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      margin: EdgeInsets.only(top: 8),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30, left: 12, right: 12, bottom: 12),
            decoration: BoxDecoration(
              color: city.color,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 4 * offset.abs()),
                BoxShadow(color: Colors.black12, blurRadius: 10 + 6 * offset.abs()),
              ],
            ),
          ),
          Positioned(top: -15, child: _buildCityImageStack()),
          _buildCityInfo(),
        ],
      ),
    );
  }

  // Widget _buildCityImageStack() {
  //   Widget offsetLayer(String path, double width, double maxOffset, double globalOffset) {
  //     double cardPadding = 24;
  //     double layerWidth = cardWidth - cardPadding;
  //     return Positioned(
  //       left: ((layerWidth * .5) - (width / 2) - offset * maxOffset) + globalOffset,
  //       bottom: cardHeight * .45,
  //       child: Image.asset('assets/images/${city.name}/$imageName.png', width: width),
  //     );
  //   }
  //
  //   double maxParallax = 30;
  //   double globalOffset = offset * maxParallax * 2;
  //   double cardPadding = 28;
  //   double containerWidth = cardWidth - cardPadding;
  //   return Container(
  //     height: cardHeight,
  //     width: containerWidth,
  //     child: Stack(
  //       alignment: Alignment.bottomCenter,
  //       children: <Widget>[
  //         offsetLayer(
  //           "images/${city.name}/${city.name}-Back.png",
  //           containerWidth * .8,
  //           maxParallax * .1,
  //           globalOffset,
  //         ),
  //         offsetLayer(
  //           "images/${city.name}/${city.name}-Middle.png",
  //           containerWidth * .9,
  //           maxParallax * .6,
  //           globalOffset,
  //         ),
  //         offsetLayer(
  //           "images/${city.name}/${city.name}-Front.png",
  //           containerWidth * .9,
  //           maxParallax,
  //           globalOffset,
  //         ),
  //       ],
  //     ),
  //   );
  // }


  Widget _buildCityImageStack() {
    Widget offsetLayer(String imageName, double width, double maxOffset, double globalOffset) {
      double cardPadding = 24;
      double layerWidth = cardWidth - cardPadding;
      return Positioned(
        left: ((layerWidth * .5) - (width / 2) - offset * maxOffset) + globalOffset,
        bottom: cardHeight * .45,
        child: Image.asset('assets/images/$imageName.png', width: width),
      );
    }

    double maxParallax = 30;
    double globalOffset = offset * maxParallax * 2;
    double cardPadding = 28;
    double containerWidth = cardWidth - cardPadding;
    return Container(
      height: cardHeight,
      width: containerWidth,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          offsetLayer(
            '${city.name}-Back',
            containerWidth * .8,
            maxParallax * .1,
            globalOffset,
          ),
          offsetLayer(
            '${city.name}-Middle',
            containerWidth * .9,
            maxParallax * .6,
            globalOffset,
          ),
          offsetLayer(
            '${city.name}-Front',
            containerWidth * .9,
            maxParallax,
            globalOffset,
          ),
        ],
      ),
    );
  }





  Widget _buildCityInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: double.infinity, height: cardHeight * .57),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(city.title, style: Styles.cardTitle, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(city.description, style: Styles.cardSubtitle, textAlign: TextAlign.center),
        ),
        Expanded(child: SizedBox()),
        TextButton(
          child: Text('Learn More'.toUpperCase(), style: Styles.cardAction),
          onPressed: null,
        ),
        SizedBox(height: 8)
      ],
    );
  }
}

class HotelList extends StatefulWidget {
  final List<Hotel> hotels;

  HotelList(this.hotels);

  @override
  _HotelListViewState createState() => _HotelListViewState();
}

class _HotelListViewState extends State<HotelList> with SingleTickerProviderStateMixin {
  late AnimationController _anim = AnimationController(vsync: this, duration: Duration(milliseconds: 700));

  @override
  void initState() {
    _anim.forward(from: 0);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant HotelList oldWidget) {
    if (oldWidget.hotels != widget.hotels) {
      _anim.forward(from: 0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Styles.hzScreenPadding * 1.5, vertical: 10),
      child: Container(
        width: 400,
        height: size.height * .25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Hotels'.toUpperCase(), style: Styles.hotelsTitleSection),
            Expanded(
              child: FadeTransition(
                opacity: _anim,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[for (Hotel hotel in widget.hotels) _buildHotelData(hotel)],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHotelData(Hotel hotel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(hotel.name, style: Styles.hotelTitle),
            SizedBox(height: 3),
            Row(
              children: <Widget>[
                Row(
                  children: List.generate(hotel.rating.toInt(), (index) {
                    return Icon(Icons.star, color: Color(0xFFfeda7d), size: 13);
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(hotel.rating.toString(), style: Styles.hotelScore),
                ),
                Text('(${hotel.reviews})', style: Styles.hotelData),
              ],
            )
          ],
        ),
        Text('\$${hotel.price}', style: Styles.hotelPrice)
      ],
    );
  }
}

class TravelCardList extends StatefulWidget {
  final List<City> cities;
  final Function onCityChange;

  const TravelCardList({
    Key? key,
    required this.cities,
    required this.onCityChange,
  }) : super(key: key);

  @override
  TravelCardListState createState() => TravelCardListState();
}

class TravelCardListState extends State<TravelCardList> with SingleTickerProviderStateMixin {
  final double _maxRotation = 20;

  PageController? _pageController;

  double _cardWidth = 160;
  double _cardHeight = 200;
  double _normalizedOffset = 0;
  double _prevScrollX = 0;
  bool _isScrolling = false;

  late AnimationController _tweenController = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
  Tween<double> _tween = Tween<double>(begin: -1, end: 0);
  late Animation<double> _tweenAnim = _tween.animate(
    new CurvedAnimation(parent: _tweenController, curve: Curves.elasticOut),
  );

  @override
  void initState() {
    _tweenAnim.addListener(() => _setOffset(_tweenAnim.value));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _cardHeight = (size.height * .48).clamp(300.0, 400.0);
    _cardWidth = _cardHeight * .8;
    _pageController = PageController(initialPage: 1, viewportFraction: _cardWidth / size.width);

    Widget listContent = Container(
      height: _cardHeight,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        controller: _pageController,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => _buildRotatedTravelCard(i),
      ),
    );

    return Listener(
      onPointerUp: _handlePointerUp,
      child: NotificationListener(
        onNotification: _handleScrollNotifications,
        child: listContent,
      ),
    );
  }

  bool _handleScrollNotifications(Notification notification) {
    if (notification is ScrollUpdateNotification) {
      if (_isScrolling) {
        double dx = notification.metrics.pixels - _prevScrollX;
        double scrollFactor = .01;
        double newOffset = (_normalizedOffset + dx * scrollFactor);
        _setOffset(newOffset.clamp(-1.0, 1.0));
      }
      _prevScrollX = notification.metrics.pixels;
      final currentPage = _pageController?.page?.round();
      if (currentPage != null) {
        widget.onCityChange(widget.cities.elementAt(currentPage % widget.cities.length));
      }
    } else if (notification is ScrollStartNotification) {
      _isScrolling = true;
      _prevScrollX = notification.metrics.pixels;
      _tweenController.stop();
    }
    return true;
  }

  void _handlePointerUp(PointerUpEvent event) {
    if (_isScrolling) {
      _isScrolling = false;
      _startOffsetTweenToZero();
    }
  }

  void _setOffset(double value) {
    setState(() {
      _normalizedOffset = value;
    });
  }

  void _startOffsetTweenToZero() {
    _tween.begin = _normalizedOffset;
    _tweenController.reset();
    _tween.end = 0;
    _tweenController.forward();
  }

  Widget _buildRotatedTravelCard(int itemIndex) {
    return Container(
      child: Rotation3d(
        rotationY: _normalizedOffset * _maxRotation,
        child: TravelCardRenderer(
          _normalizedOffset,
          city: widget.cities[itemIndex % widget.cities.length],
          cardWidth: _cardWidth,
          cardHeight: _cardHeight - 50,
        ),
      ),
    );
  }
}

class TravelCardDemo extends StatefulWidget {
  @override
  _TravelCardDemoState createState() => _TravelCardDemoState();
}

class _TravelCardDemoState extends State<TravelCardDemo> {
  static final data = DemoData();
  static final _cityList = data.getCities();
  City _currentCity = _cityList[1];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Styles.hzScreenPadding),
              child: Text(
                'Where are you going next?',
                overflow: TextOverflow.ellipsis,
                style: Styles.appHeader,
                maxLines: 2,
              ),
            ),
            Expanded(
              child: TravelCardList(
                cities: _cityList,
                onCityChange: _handleCityChange,
              ),
            ),
            HotelList(_currentCity.hotels),
          ],
        ),
      ),
    );
  }

  void _handleCityChange(City city) {
    setState(() {
      this._currentCity = city;
    });
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      leading: Icon(Icons.menu, color: Colors.black),
      backgroundColor: Colors.white,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Styles.hzScreenPadding),
          child: Icon(Icons.search, color: Colors.black),
        )
      ],
    );
  }
}

class Rotation3d extends StatelessWidget {
  final Widget child;
  final double rotationY;

  Rotation3d({required this.child, required this.rotationY});

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001) // perspective
        ..rotateY(rotationY * 0.0174533), // 0.0174533 = 1 degree in radians
      alignment: FractionalOffset.center,
      child: child,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TravelCardDemo(),
  ));
}
