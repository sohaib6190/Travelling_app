
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_proj/main.dart';
import 'package:my_proj/widgets/CustomButotn.dart';
import 'package:my_proj/widgets/CustomTextField.dart';

enum SummaryTheme {
  light,
  dark,
}

class TicketFoldDemo extends StatefulWidget {
  @override
  _TicketFoldDemoState createState() => _TicketFoldDemoState();
}

class _TicketFoldDemoState extends State<TicketFoldDemo> {
  final List<BoardingPassData> _boardingPasses = DemoData().boardingPasses;
  final Color _backgroundColor = Color(0xFFf0f0f0);
  final ScrollController _scrollController = ScrollController();
  final List<int> _openTickets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: _buildAppBar(),
      body: Container(

        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[

            SizedBox(
              height: 20,
            ),

            SizedBox(
                width: 350,
                height: 50,
                child: CustomRoundButton(btname: 'Find Your Ticket', btcolor: Color(0xffd79977),
                onPressed: (){},
                )
            ),


            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                physics: BouncingScrollPhysics(),
                itemCount: _boardingPasses.length,
                itemBuilder: (BuildContext context, int index) {
                  return Ticket(
                    boardingPass: _boardingPasses.elementAt(index),
                    onClick: () => _handleClickedTicket(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _handleClickedTicket(int clickedTicket) {
    _openTickets.contains(clickedTicket)
        ? _openTickets.remove(clickedTicket)
        : _openTickets.add(clickedTicket);

    double openTicketsOffset = Ticket.nominalOpenHeight * _getOpenTicketsBefore(clickedTicket);
    double closedTicketsOffset = Ticket.nominalClosedHeight *
        (clickedTicket - _getOpenTicketsBefore(clickedTicket));

    double offset =
        openTicketsOffset + closedTicketsOffset - (Ticket.nominalClosedHeight * .5);

    _scrollController.animateTo(
      max(0, offset),
      duration: Duration(seconds: 1),
      curve: Interval(.25, 1, curve: Curves.easeOutQuad),
    );

    return true;
  }

  int _getOpenTicketsBefore(int ticketIndex) {
    return _openTickets.where((int index) => index < ticketIndex).length;
  }

  PreferredSizeWidget _buildAppBar() {
    Color appBarIconsColor = Color(0xFF212121);
    return AppBar(
      leading: Icon(Icons.arrow_back, color: appBarIconsColor),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Icon(Icons.more_horiz, color: appBarIconsColor, size: 28),
        )
      ],
      backgroundColor: _backgroundColor,
      elevation: 0,
      title: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          'Fly With World'.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            letterSpacing: 0.5,
            color: appBarIconsColor,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            package: MyApp.pkg,
          ),
        ),
      ),
    );
  }
}

class BoardingPassData {
  String passengerName;
  _Airport origin;
  _Airport destination;
  _Duration duration;
  String TicketPrize;
  DateTime departs;
  DateTime arrives;
  String gate;
  int zone;
  String seat;
  String flightClass;
  String flightNumber;

  BoardingPassData({
    required this.passengerName,
    required this.origin,
    required this.destination,
    required this.duration,
    required this.TicketPrize,
    required this.departs,
    required this.arrives,
    required this.gate,
    required this.zone,
    required this.seat,
    required this.flightClass,
    required this.flightNumber,
  });
}

class _Airport {
  String code;
  String city;

  _Airport({required this.city, required this.code});
}

class _Duration {
  int hours;
  int minutes;

  _Duration({required this.hours, required this.minutes});

  @override
  String toString() {
    return '\t${hours}H ${minutes}M';
  }
}

class DemoData {
  List<BoardingPassData> _boardingPasses = [
    BoardingPassData(
      passengerName: 'Emirates',
      origin: _Airport(code: 'YEG', city: 'Islamabad'),
      destination: _Airport(code: 'LAX', city: 'Los Angeles'),
      duration: _Duration(hours: 3, minutes: 30),
      TicketPrize: '800',
      departs: DateTime(2019, 10, 17, 23, 45),
      arrives: DateTime(2019, 10, 18, 02, 15),
      gate: '50',
      zone: 3,
      seat: '12A',
      flightClass: 'Economy',
      flightNumber: 'AC237',
    ),
    BoardingPassData(
      passengerName: 'Ms. Jane Doe',
      origin: _Airport(code: 'YYC', city: 'Calgary'),
      destination: _Airport(code: 'YOW', city: 'Ottawa'),
      duration: _Duration(hours: 3, minutes: 50),
      TicketPrize: '800',
      departs: DateTime(2019, 10, 17, 23, 45),
      arrives: DateTime(2019, 10, 18, 02, 15),
      gate: '22',
      zone: 1,
      seat: '17C',
      flightClass: 'Economy',
      flightNumber: 'AC237',
    ),
    BoardingPassData(
      passengerName: 'Ms. Jane Doe',
      origin: _Airport(code: 'YEG', city: 'Edmonton'),
      destination: _Airport(code: 'MEX', city: 'Mexico'),
      duration: _Duration(hours: 4, minutes: 15),
      TicketPrize: '800',
      departs: DateTime(2019, 10, 17, 23, 45),
      arrives: DateTime(2019, 10, 18, 02, 15),
      gate: '30',
      zone: 2,
      seat: '22B',
      flightClass: 'Economy',
      flightNumber: 'AC237',
    ),
    BoardingPassData(
      passengerName: 'Ms. Jane Doe',
      origin: _Airport(code: 'YYC', city: 'Calgary'),
      destination: _Airport(code: 'YOW', city: 'Ottawa'),
      duration: _Duration(hours: 3, minutes: 50),
      TicketPrize: '800',
      departs: DateTime(2019, 10, 17, 23, 45),
      arrives: DateTime(2019, 10, 18, 02, 15),
      gate: '22',
      zone: 1,
      seat: '17C',
      flightClass: 'Economy',
      flightNumber: 'AC237',
    ),
  ];

  get boardingPasses => _boardingPasses;

  getBoardingPass(int index) {
    return _boardingPasses.elementAt(index);
  }
}

class FlightBarcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: MaterialButton(
        child: Image.asset('assets/images/barcode.png',
            package: MyApp.pkg
        ),
        onPressed: () {
          print('Button was pressed');
        },
      ),
    ),
  );
}

class FlightDetails extends StatelessWidget {
  final BoardingPassData boardingPass;
  final TextStyle titleTextStyle = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 11,
    height: 1,
    letterSpacing: .2,
    fontWeight: FontWeight.w600,
    color: Color(0xffafafaf),
    package: MyApp.pkg,
  );
  final TextStyle contentTextStyle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: 16,
    height: 1.8,
    letterSpacing: .3,
    color: Color(0xff083e64),
    package: MyApp.pkg,
  );

  FlightDetails(this.boardingPass);

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(4.0),
    ),
    width: double.infinity,
    height: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Gate'.toUpperCase(), style: titleTextStyle),
                Text(boardingPass.gate, style: contentTextStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Zone'.toUpperCase(), style: titleTextStyle),
                Text(boardingPass.zone.toString(), style: contentTextStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Seat'.toUpperCase(), style: titleTextStyle),
                Text(boardingPass.seat, style: contentTextStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Class'.toUpperCase(), style: titleTextStyle),
                Text(boardingPass.flightClass, style: contentTextStyle),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Flight'.toUpperCase(), style: titleTextStyle),
                Text(boardingPass.flightNumber, style: contentTextStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Departs'.toUpperCase(), style: titleTextStyle),
                Text(
                  DateFormat('MMM d, H:mm').format(boardingPass.departs).toUpperCase(),
                  style: contentTextStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Arrives'.toUpperCase(), style: titleTextStyle),
                Text(
                  DateFormat('MMM d, H:mm').format(boardingPass.arrives).toUpperCase(),
                  style: contentTextStyle,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

class FlightSummary extends StatelessWidget {
  final BoardingPassData boardingPass;
  final SummaryTheme theme;
  final bool isOpen;

  const FlightSummary({Key? key, required this.boardingPass, this.theme = SummaryTheme.light, this.isOpen = false})
      : super(key: key);

  Color get mainTextColor => (theme == SummaryTheme.dark) ? Colors.white : Color(0xFF083e64);
  Color get secondaryTextColor => (theme == SummaryTheme.dark) ? Color(0xff61849c) : Color(0xFF838383);
  Color get separatorColor => (theme == SummaryTheme.dark) ? Color(0xffeaeaea) : Color(0xff396583);

  TextStyle get bodyTextStyle => TextStyle(
    color: mainTextColor,
    fontSize: 13,
    fontFamily: 'Oswald',
    package: MyApp.pkg,
  );

  bool get isLight => theme == SummaryTheme.light;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _getBackgroundDecoration(),
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildLogoHeader(),
            _buildSeparationLine(),
            _buildTicketHeader(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Stack(
                children: <Widget>[
                  Align(alignment: Alignment.centerLeft, child: _buildTicketOrigin()),
                  Align(alignment: Alignment.center, child: _buildTicketDuration()),
                  Align(alignment: Alignment.centerRight, child: _buildTicketDestination())
                ],
              ),
            ),
            _buildBottomIcon()
          ],
        ),
      ),
    );
  }

  BoxDecoration _getBackgroundDecoration() {
    return isLight
        ? BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
      color: Colors.white,
    )
        : BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
      image: DecorationImage(image: AssetImage('assets/images/bg_blue.png',
          package: MyApp.pkg
      ), fit: BoxFit.cover),
    );
  }

  Widget _buildLogoHeader() {
    if (isLight) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Image.asset('assets/images/flutter-logo.png', width: 8,
               package:MyApp.pkg
            ),
          ),
          Text(
            'Fluttair'.toUpperCase(),
            style: TextStyle(
              color: mainTextColor,
              fontFamily: 'OpenSans',
              fontSize: 10,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              package: MyApp.pkg,
            ),
          ),
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: Image.asset('images/logo_white.png', height: 12,
           package: MyApp.pkg
        ),
      );
    }
  }

  Widget _buildSeparationLine() {
    return Container(
      width: double.infinity,
      height: 1,
      color: separatorColor,
    );
  }

  Widget _buildTicketHeader(BuildContext context) {
    var headerStyle = TextStyle(
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.bold,
      fontSize: 11,
      color: Color(0xFFe46565),
      package: MyApp.pkg,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(boardingPass.passengerName.toUpperCase(), style: headerStyle),
        Text('Ticket ${boardingPass.TicketPrize}', style: headerStyle),
      ],
    );
  }

  Widget _buildTicketOrigin() {
    return Column(
      children: <Widget>[
        Text(
          boardingPass.origin.code.toUpperCase(),
          style: bodyTextStyle.copyWith(fontSize: 42),
        ),
        Text(boardingPass.origin.city, style: bodyTextStyle.copyWith(color: secondaryTextColor)),
      ],
    );
  }

  Widget _buildTicketDuration() {
    String routeType = isLight ? 'blue' : 'white';
    final planeImage = Image.asset('assets/images/airplane_$routeType.png', height: 20, fit: BoxFit.contain,
        package: MyApp.pkg
    );
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 120,
            height: 58,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset('assets/images/planeroute_$routeType.png', fit: BoxFit.cover,
                    package: MyApp.pkg
                ),
                isLight ? planeImage : _AnimatedSlideToRight(child: planeImage, isOpen: isOpen),
              ],
            ),
          ),
          Text(boardingPass.duration.toString(), textAlign: TextAlign.center, style: bodyTextStyle),
        ],
      ),
    );
  }

  Widget _buildTicketDestination() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          boardingPass.destination.code.toUpperCase(),
          style: bodyTextStyle.copyWith(fontSize: 42),
        ),
        Text(
          boardingPass.destination.city,
          style: bodyTextStyle.copyWith(color: secondaryTextColor),
        ),
      ],
    );
  }

  Widget _buildBottomIcon() {
    IconData icon = isLight ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up;
    return Icon(
      icon,
      color: mainTextColor,
      size: 18,
    );
  }
}

class App {
}

class _AnimatedSlideToRight extends StatefulWidget {
  final Widget child;
  final bool isOpen;

  const _AnimatedSlideToRight({Key? key, required this.child, required this.isOpen}) : super(key: key);

  @override
  _AnimatedSlideToRightState createState() => _AnimatedSlideToRightState();
}

class _AnimatedSlideToRightState extends State<_AnimatedSlideToRight> with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1700));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isOpen) _controller.forward(from: 0);
    return SlideTransition(
      position: Tween(begin: Offset(-2, 0), end: Offset(1, 0)).animate(
        CurvedAnimation(curve: Curves.easeOutQuad, parent: _controller),
      ),
      child: widget.child,
    );
  }
}

class FoldingTicket extends StatefulWidget {
  static const double padding = 16.0;
  final bool isOpen;
  final List<FoldEntry> entries;
  final VoidCallback? onClick;
  final Duration? duration;

  FoldingTicket({this.duration, required this.entries, this.isOpen = false, this.onClick});

  @override
  _FoldingTicketState createState() => _FoldingTicketState();
}

class _FoldingTicketState extends State<FoldingTicket> with SingleTickerProviderStateMixin {
  late List<FoldEntry> _entries = widget.entries;
  late AnimationController _controller = AnimationController(vsync: this);
  double _ratio = 0.0;

  double get openHeight => _entries.fold<double>(0.0, (val, o) => val + o.height) + FoldingTicket.padding * 2;

  double get closedHeight => _entries[0].height + FoldingTicket.padding * 2;

  bool get isOpen => widget.isOpen;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_tick);
    _updateFromWidget();
  }

  @override
  void didUpdateWidget(FoldingTicket oldWidget) {
    // Opens or closes the ticked if the status changed
    _updateFromWidget();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(FoldingTicket.padding),
      height: closedHeight + (openHeight - closedHeight) * Curves.easeOut.transform(_ratio),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 10,
              spreadRadius: 1,
            )
          ],
        ),
        child: _buildEntry(0),
      ),
    );
  }

  Widget _buildEntry(int index) {
    FoldEntry entry = _entries[index];
    int count = _entries.length - 1;
    double ratio = max(0.0, min(1.0, _ratio * count + 1.0 - index * 1.0));

    Matrix4 mtx = Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..setEntry(1, 2, 0.2)
      ..rotateX(pi * (ratio - 1.0));

    Widget card = SizedBox(height: entry.height, child: ratio < 0.5 ? entry.back : entry.front);

    return Transform(
      alignment: Alignment.topCenter,
      transform: mtx,
      child: GestureDetector(
        onTap: widget.onClick,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          // Note: Container supports a transform property, but not alignment for it.
          child: (index == count || ratio <= 0.5)
              ? card
              : // Don't build a stack if it isn't needed.
          Column(
            children: [
              card,
              _buildEntry(index + 1),
            ],
          ),
        ),
      ),
    );
  }

  void _updateFromWidget() {
    _entries = widget.entries;
    _controller.duration = widget.duration ?? Duration(milliseconds: 400 * (_entries.length - 1));
    isOpen ? _controller.forward() : _controller.reverse();
  }

  void _tick() {
    setState(() {
      _ratio = Curves.easeInQuad.transform(_controller.value);
    });
  }
}

class FoldEntry {
  final Widget? front;
  late Widget? back;
  final double height;

  FoldEntry({required this.front, required this.height, Widget? back}) {
    this.back = Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()..setEntry(3, 2, .001)..rotateX(pi),
      child: back,
    );
  }
}

class Ticket extends StatefulWidget {
  static const double nominalOpenHeight = 400;
  static const double nominalClosedHeight = 160;
  final BoardingPassData boardingPass;
  final VoidCallback? onClick;

  const Ticket({Key? key, required this.boardingPass, required this.onClick}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  FlightSummary? topCard;
  late FlightSummary frontCard = FlightSummary(boardingPass: widget.boardingPass);
  late FlightDetails middleCard = FlightDetails(widget.boardingPass);
  late FlightBarcode bottomCard = FlightBarcode();
  late FoldingTicket foldingTicket;

  Widget get backCard => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
      color: Color(0xffdce6ef),
    ),
  );
  @override
  void initState() {
    super.initState();
    foldingTicket = FoldingTicket(
      entries: [
        FoldEntry(height: 160.0, front: topCard),
        FoldEntry(height: 160.0, front: middleCard, back: frontCard),
        FoldEntry(height: 80.0, front: bottomCard, back: backCard)
      ],
      isOpen: false,
      duration: Duration(milliseconds: 400),
      onClick: _handleTicketClick,
    );
  }

  @override
  Widget build(BuildContext context) {
    return foldingTicket;
  }

  void _handleTicketClick() {
    setState(() {
      topCard = FlightSummary(boardingPass: widget.boardingPass, theme: SummaryTheme.dark, isOpen: !foldingTicket.isOpen);
      foldingTicket = FoldingTicket(
        entries: [

          FoldEntry(front: topCard, back: middleCard, height: Ticket.nominalClosedHeight),
          FoldEntry(front: middleCard, back: frontCard, height: Ticket.nominalClosedHeight),
          FoldEntry(height: 80.0, front: bottomCard, back: backCard),
        ],

        isOpen: !foldingTicket.isOpen,
        duration: Duration(milliseconds: 400),
        onClick: _handleTicketClick,
      );
    });
    if (widget.onClick != null) {
      widget.onClick!();
    }
  }
}


