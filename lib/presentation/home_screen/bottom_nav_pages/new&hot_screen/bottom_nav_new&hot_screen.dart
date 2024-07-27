import 'package:netflix_clone/data/models/new&hot_model.dart';
import 'package:netflix_clone/domain/app_imports/app_imports.dart';
import 'package:netflix_clone/presentation/custom_widgets/custom_appbar.dart';
import 'package:netflix_clone/presentation/custom_widgets/custom_tabbar.dart';

class NewHotScreen extends StatefulWidget {
  final List<NewHotItem> items;

  const NewHotScreen({super.key, required this.items});

  @override
  State<NewHotScreen> createState() => _NewHotScreenState();
}

class _NewHotScreenState extends State<NewHotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        userName: 'New & Hot',
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            MTabBar(
              tab1: 'Coming Soon',
              tab2: "Everyone's Watching",
              tab3: 'Games',
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  final item = widget.items[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 40.h),
                    child: NewHotItemWidget(item: item),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewHotItemWidget extends StatelessWidget {
  final NewHotItem item;

  const NewHotItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: '${item.month}\n',
            style: UiHelper.mTextStyle12(),
            children: [
              TextSpan(
                text: item.day,
                style: UiHelper.mTextStyle25(),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.r),
              height: 150.h,
              width: 280.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                  image: NetworkImage(item.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
              width: 300.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: double.infinity,
                    width: 150.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(item.logoUrl),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                    width: 150.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.bell,
                              size: 22.sp,
                            ),
                            Text(
                              'Remind Me',
                              style: UiHelper.mTextStyle10(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.circleInfo,
                              size: 22.sp,
                            ),
                            Text(
                              'Info',
                              style: UiHelper.mTextStyle10(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Coming On ${item.day} ${item.month}',
              style: UiHelper.mTextStyle16(),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              width: 300.w,
              child: Text(
                item.description,
                style: UiHelper.mTextStyle12(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              item.genres,
              style: UiHelper.mTextStyle12(
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
