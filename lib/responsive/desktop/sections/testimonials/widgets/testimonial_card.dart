import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TestimonialCard extends StatefulWidget {
  final String image;
  final String name;
  const TestimonialCard({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  State<TestimonialCard> createState() => _TestimonialCardState();
}

class _TestimonialCardState extends State<TestimonialCard>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Color?> _forwardColorAnimation;
  late final Animation<Color?> _reverseColorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ),
    );

    _forwardColorAnimation = ColorTween(
      begin: const Color.fromARGB(255, 95, 95, 95),
      end: const Color(0xff1B1B1B).withOpacity(0),
    ).animate(_animationController);

    _reverseColorAnimation = ColorTween(
      begin: const Color(0xff1B1B1B).withOpacity(0),
      end: const Color.fromARGB(255, 95, 95, 95),
    ).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        if (value) {
          if (_animationController.isAnimating) {
            _animationController.reset();
          }
          _animationController.forward();
        } else {
          if (_animationController.isCompleted ||
              _animationController.isAnimating) {
            _animationController.reverse();
          }
        }
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedBuilder(
            animation: Listenable.merge([
              _forwardColorAnimation,
              _reverseColorAnimation,
            ]),
            builder: (context, child) {
              return CustomPaint(
                painter: TestimonialBoxPainter(
                  begin: _forwardColorAnimation.value!,
                  end: _reverseColorAnimation.value!,
                ),
                child: Container(
                  width: 445,
                  height: 212,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 30,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                        style: GoogleFonts.ibmPlexMono(
                          color: const Color(0xff9C9C9C),
                          fontSize: 14,
                          height: 24 / 14,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(widget.image),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            widget.name,
                            style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            top: -10,
            left: 10,
            child: SvgPicture.asset(
              'icons/approstrophe.svg',
            ),
          ),
        ],
      ),
    );
  }
}

class TestimonialBoxPainter extends CustomPainter {
  final Color begin;
  final Color end;

  TestimonialBoxPainter({
    required this.begin,
    required this.end,
  });
  @override
  void paint(Canvas canvas, Size size) {
    LinearGradient strokeColor = LinearGradient(
      colors: [begin, end],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );

    final paintBrush = Paint()
      ..strokeWidth = 1
      ..shader = strokeColor.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..style = PaintingStyle.stroke;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: Offset(size.width / 2, size.height / 2),
          width: size.width,
          height: size.height,
        ),
        const Radius.circular(6),
      ),
      paintBrush,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
