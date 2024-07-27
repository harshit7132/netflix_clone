import 'dart:async';

import 'package:netflix_clone/domain/app_imports/app_imports.dart';

class WidgetSlider extends StatefulWidget {
  final double width;
  const WidgetSlider({required this.width});
  @override
  _WidgetSliderState createState() => _WidgetSliderState();
}

class _WidgetSliderState extends State<WidgetSlider> {
  late PageController _pageController;
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
    );

    _timer = Timer.periodic(const Duration(seconds: 6), (Timer timer) {
      if (_currentPage < AppConstants.moviesData.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (int page) {
        setState(() {
          _currentPage = page;
        });
      },
      children: List.generate(
        AppConstants.moviesData.length,
        (index) {
          String key = AppConstants.moviesData.keys.elementAt(index);
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailScreen(
                    index: index,
                  ),
                ),
              );
            },
            child: CustomSliderItems(
              width: widget.width,
              data: AppConstants.moviesData[key],
              isSlider: true,
            ),
          );
        },
      ),
    );
  }
}
