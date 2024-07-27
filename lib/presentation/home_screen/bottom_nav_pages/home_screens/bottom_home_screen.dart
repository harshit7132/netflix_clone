import 'package:netflix_clone/domain/app_imports/app_imports.dart';
import 'package:netflix_clone/presentation/custom_widgets/custom_appbar.dart';

class BottomHomeScreen extends StatelessWidget {
  const BottomHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        userName: 'UserName',
      ),
      body: DefaultTabController(
        length: 3,
        child: Stack(
          children: [
            _buildBackgroundContainer(height, width),
            ListView(
              padding: EdgeInsets.zero,
              children: [
                mTabBar(),
                _buildWidgetSlider(width),
                SizedBox(height: 20.h),
                _buildMovieList(height, width),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _buildBackgroundContainer(double height, double width) {
    return Container(
      height: height / 2,
      width: width,
      color: Colors.grey.shade700,
    );
  }

  SizedBox _buildWidgetSlider(double width) {
    return SizedBox(
      height: 450.h,
      child: WidgetSlider(
        width: width,
      ),
    );
  }

  SizedBox _buildMovieList(double height, double width) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    AppConstants.titlesName[index],
                    style: UiHelper.mTextStyle16(),
                  ),
                ),
                SizedBox(
                  height: 200.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    children: List.generate(
                      AppConstants.moviesData.length,
                      (index) {
                        String key =
                            AppConstants.moviesData.keys.elementAt(index);
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MovieDetailScreen(index: index),
                              ),
                            );
                          },
                          child: CustomSliderItems(
                            data: AppConstants.moviesData[key],
                            width: width,
                            isSlider: false,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }

  Widget mTabBar() {
    return Padding(
      padding: EdgeInsets.only(top: 90.h, left: 20.w, right: 20.w),
      child: TabBar(
        indicatorColor: Colors.white,
        indicator: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(50.sp),
        ),
        labelStyle: UiHelper.mTextStyle12(),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            height: 30.h,
            text: 'TV Shows',
          ),
          Tab(
            height: 30.h,
            text: 'Movies',
          ),
          Tab(
            height: 30.h,
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Categories',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
