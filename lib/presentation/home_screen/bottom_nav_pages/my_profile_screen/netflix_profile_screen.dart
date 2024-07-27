import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/domain/app_imports/app_imports.dart';

class NetflixProfileScreen extends StatelessWidget {
  const NetflixProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 50.h,
            floating: false,
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final double scrollOffset = constraints.biggest.height;

                final Color appBarColor =
                    scrollOffset <= 100 ? Colors.grey : Color(0x0);

                return FlexibleSpaceBar(
                  title: Text(
                    'My Netflix',
                    style: UiHelper.mTextStyle14(),
                  ),
                  background: Container(
                    decoration: BoxDecoration(
                      color: appBarColor,
                    ),
                  ),
                );
              },
            ),
            leading: const SizedBox.shrink(),
            actions: [
              IconButton(
                icon: const Icon(CupertinoIcons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.drag_handle),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 280.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.sp),
                            topLeft: Radius.circular(30.sp),
                          ),
                        ),
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 20.h,
                          ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            var data = AppConstants.profile_items[index];

                            return Padding(
                              padding: EdgeInsets.only(bottom: 20.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    data['icon'],
                                    size: 25.sp,
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Text(
                                    data['text'],
                                    style: data['icon'] == null
                                        ? UiHelper.mTextStyle12(
                                            color: Colors.grey,
                                          )
                                        : UiHelper.mTextStyle14(),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _buildProfileImage(),
                _buildUserName(),
                _buildNotificationRow(),
                _buildSuggestionRow(),
                SizedBox(height: 20.h),
                _buildSuggestionRow(),
                _buildDownloadsRow(),
                _buildLikedShowsTitle(),
                _buildLikedShows(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      height: 80.h,
      width: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        image: const DecorationImage(
          image: NetworkImage(
            'https://wallpapers.com/images/hd/netflix-profile-pictures-1000-x-1000-88wkdmjrorckekha.jpg',
          ),
        ),
      ),
    );
  }

  Widget _buildUserName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Raunak',
          style: UiHelper.mTextStyle20(),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          size: 30.sp,
        ),
      ],
    );
  }

  Widget _buildNotificationRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 25.sp,
                child: Icon(
                  CupertinoIcons.bell_fill,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 20.w),
              Text(
                'Notifications',
                style: UiHelper.mTextStyle18(),
              ),
            ],
          ),
          Icon(
            CupertinoIcons.right_chevron,
            size: 25.sp,
          )
        ],
      ),
    );
  }

  Widget _buildSuggestionRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 5.w),
        Text(
          '•',
          style: UiHelper.mTextStyle18(color: Colors.red),
        ),
        SizedBox(width: 5.w),
        _buildSuggestionStack(),
        SizedBox(width: 10.w),
        _buildSuggestionText(),
      ],
    );
  }

  Widget _buildSuggestionStack() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15.w, top: 15.h),
          height: 70.h,
          width: 140.w,
          color: Colors.grey,
        ),
        Container(
          margin: EdgeInsets.only(left: 10.w, top: 10.h),
          height: 70.h,
          width: 140.w,
          color: Colors.grey.shade800,
        ),
        Container(
          height: 70.h,
          width: 140.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://static.vecteezy.com/system/resources/thumbnails/034/895/364/original/animated-illustration-of-moving-a-staircase-to-heaven-seamless-looping-animated-video.jpg'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSuggestionText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Suggestions for Tonight',
          style: UiHelper.mTextStyle14(),
        ),
        SizedBox(height: 10.h),
        Text(
          'Explore personalised picks.',
          style: UiHelper.mTextStyle12(color: Colors.grey.shade300),
        ),
        SizedBox(height: 10.h),
        Text(
          '13 Jul',
          style: UiHelper.mTextStyle12(color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildDownloadsRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 25.sp,
                child: Icon(
                  Icons.download,
                  color: Colors.white,
                  size: 25.sp,
                ),
              ),
              SizedBox(width: 20.w),
              Text(
                'Downloads',
                style: UiHelper.mTextStyle18(),
              ),
            ],
          ),
          Icon(
            CupertinoIcons.right_chevron,
            size: 25.sp,
          )
        ],
      ),
    );
  }

  Widget _buildLikedShowsTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        'TV Shows & Movies You have Liked',
        style: UiHelper.mTextStyle16(),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _buildLikedShows() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170.h,
            width: 130.w,
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.sp),
                topRight: Radius.circular(20.sp),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.sp),
                    topRight: Radius.circular(20.sp),
                  ),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUzIvNMXReKgBtVTs0mESY2V-03rD8ML9Uzw&s',
                    height: 130.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.share,
                      size: 25.sp,
                    ),
                    Text(
                      'Share',
                      style: UiHelper.mTextStyle12(),
                    ),
                  ],
                ),
                SizedBox(height: 0.h)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
