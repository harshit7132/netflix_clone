import 'package:netflix_clone/domain/app_imports/app_imports.dart';

class CustomSliderItems extends StatelessWidget {
  final double width;
  final Map<String, dynamic> data;
  final bool isSlider;

  const CustomSliderItems({
    super.key,
    required this.width,
    required this.data,
    required this.isSlider,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: isSlider ? 20.h : 10.w),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: isSlider ? 20.w : 10.w,
          ),
          height: 400.h,
          width: isSlider ? width : 150.w,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.sp),
            boxShadow: isSlider
                ? [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 0.2,
                      blurRadius: 20,
                    ),
                  ]
                : [],
            image: DecorationImage(
              image: AssetImage(data['image']),
              fit: isSlider ? BoxFit.cover : BoxFit.contain,
            ),
          ),
          child: isSlider
              ? Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RedContainer(position: data['position']),
                          SizedBox(width: 5.w),
                          Text(
                            '#${data['top']} in Movies Today',
                            style: UiHelper.mTextStyle14(),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomContainer(),
                          CustomContainer(
                            icon: Icons.add,
                            text: 'My List',
                            isList: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
