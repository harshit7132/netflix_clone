import 'package:netflix_clone/domain/app_imports/app_imports.dart';

class MovieDetailScreen extends StatefulWidget {
  final int index;
  const MovieDetailScreen({super.key, required this.index});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  List<MoviesModel> allMovies = [];

  @override
  void initState() {
    super.initState();
    var data = AppConstants.moviesDetails;
    for (Map<String, dynamic> eachMovie in data) {
      allMovies.add(MoviesModel.fromMap(eachMovie));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorConstants.appBgColor,
      appBar: AppBar(
        backgroundColor: const Color(0x0),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.download,
              size: 18.sp,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 18.sp,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 150.h,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: allMovies
                .map(
                  (item) => Image.asset(
                    item.imageUrl,
                    fit: BoxFit.cover,
                    width: 1000.w,
                  ),
                )
                .toList(),
          ),

          ///movies detail and buttons
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                movieDetailSection(allMovies[0]),
                SizedBox(
                  height: 10.h,
                ),

                Row(
                  children: [
                    RedContainer(
                      position: '10',
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Text(
                      '#3 in Movies Today',
                      style: UiHelper.mTextStyle18(),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20.h,
                ),

                ///Buttons
                CustomContainer(
                  height: 40.h,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomContainer(
                  height: 40.h,
                  width: double.infinity,
                  isList: true,
                  icon: Icons.file_download_outlined,
                  text: 'Download',
                ),

                SizedBox(
                  height: 20.h,
                ),
                ReadMoreText(
                  text: allMovies[widget.index].description,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Starring :   '),
                    ReadMoreText(
                      text: allMovies[widget.index].cast,
                      line: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Director :   '),
                    Text(
                      allMovies[widget.index].director,
                      style: UiHelper.mTextStyle12(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),

          ///like rate share buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(FontAwesomeIcons.plus),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text('My List'),
                ],
              ),
              Column(
                children: [
                  const Icon(FontAwesomeIcons.thumbsUp),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text('Rate'),
                ],
              ),
              Column(
                children: [
                  const Icon(FontAwesomeIcons.share),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text('Share'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 18.h,
          ),

          ///more like this
          Divider(
            thickness: 2,
            color: Colors.grey,
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 200.w, left: 15.w),
            child: Divider(
              thickness: 6,
              color: Colors.red,
              height: 6,
            ),
          ),
          moreLikeThisSection(allMovies),
        ],
      ),
    );
  }
}

Widget movieDetailSection(MoviesModel movieModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        movieModel.title,
        style: UiHelper.mTextStyle25(),
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        children: [
          Text(
            movieModel.year.toString(),
            style: UiHelper.mTextStyle16(fontWeight: FontWeight.normal),
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            movieModel.ageRating,
            style: UiHelper.mTextStyle14(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              background: Colors.grey,
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            movieModel.ranking,
            style: UiHelper.mTextStyle16(fontWeight: FontWeight.normal),
          ),
          SizedBox(
            width: 20.w,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(),
            child: Text(
              'HD',
              style: UiHelper.mTextStyle16(),
            ),
          ),
        ],
      ),
    ],
  );
}

////
class ReadMoreText extends StatefulWidget {
  final String text;
  final int? line;
  const ReadMoreText({required this.text, this.line = 20});

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final textList = widget.text.split(' ');
    final truncatedText = textList.length > widget.line!
        ? textList.sublist(0, widget.line!).join(' ') + '...'
        : widget.text;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          isExpanded ? widget.text : truncatedText,
          style: UiHelper.mTextStyle12(
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
        if (textList.length > widget.line!)
          InkWell(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Show less' : 'Read more',
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}

Widget moreLikeThisSection(List<MoviesModel> allMovies) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Text(
          'More Like This',
          style: UiHelper.mTextStyle16(),
        ),
      ),
      SizedBox(
        height: 180.h,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage(allMovies[index].imageUrl),
                    fit: BoxFit.cover),
              ),
              width: 150.w,
            );
          },
          itemCount: allMovies.length,
        ),
      ),
    ],
  );
}
