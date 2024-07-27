import 'package:flutter/material.dart';
import 'package:netflix_clone/data/models/new&hot_model.dart';

class AppConstants {
  static final Map<String, dynamic> moviesData = {
    'first': {
      'top': '5',
      'position': '2',
      'image': 'assets/images/haunted_movies/annabelle.jpg'
    },
    'second': {
      'top': '10',
      'position': '5',
      'image': 'assets/images/haunted_movies/conjuring.webp'
    },
    'third': {
      'top': '8',
      'position': '3',
      'image': 'assets/images/haunted_movies/exorcist.jpg'
    },
  };

  static final List titlesName = [
    'Today\'s Top Picks for You',
    'Continue Watching for User',
    'Mobile Games',
    'Downloads For You',
    'New on Netflix',

    ///new UI
    'Top 10 Movies in India Today',

    'Only on Netflix',
    'Us TV Shows',
    'Action Movies',
    'Children & Family TV',
    'Critically Acclaimed TV Shows',
    'Indians Movies',
    'True Crime',

    ///new UI
    'Top 10 TV Shows in India Today',

    'Action & Adventure Movies',
    'Binge-Worthy Revenge TV Shows',
    'Emotional Indian Movies',
  ];

  static final List<Map<String, dynamic>> details = [
    {
      'image': 'assets/images/haunted_movies/annabelle.jpg',
      'name': 'The Annabelle',
    },
    {
      'image': 'assets/images/haunted_movies/conjuring.webp',
      'name': 'The Conjuring',
    },
    {
      'image': 'assets/images/haunted_movies/exorcist.webp',
      'name': 'The Exorcist',
    },
    {
      'image': 'assets/images/haunted_movies/annabelle.jpg',
      'name': 'The Annabelle',
    },
    {
      'image': 'assets/images/haunted_movies/conjuring.webp',
      'name': 'The Conjuring',
    },
    {
      'image': 'assets/images/haunted_movies/exorcist.webp',
      'name': 'The Exorcist',
    },
  ];

  static final List<Map<String, dynamic>> moviesDetails = [
    {
      'title': 'Annabelle',
      'year': '2014',
      'ageRating': 'U/A 8+',
      'duration': '99 minutes',
      'description':
          'Annabelle is a 2014 American supernatural horror film directed by John R. Leonetti, written by Gary Dauberman and produced by Peter Safran and James Wan. It stars Annabelle Wallis, Ward Horton, and Alfre Woodard. Principal photography began in January 2014 in Los Angeles. It premiered at the TCL Chinese Theatre in Los Angeles on September 29, 2014 and was theatrically released in the United States on October 3, 2014, by Warner Bros. Pictures and New Line Cinema.',
      'imageUrl': 'assets/images/slider/1.jpg',
      'ranking': '#3',
      'cast':
          'Annabelle Wallis, Ward Horton, Alfre Woodard, Tony Amendola, Kerry O\'Malley, Brian Howe, Eric Ladin, Ivar Brogger, Gabriel Bateman',
      'director': 'John R. Leonetti'
    },
    {
      'title': 'The Exorcist',
      'year': '1973',
      'ageRating': 'U/A 18+',
      'duration': '2h 12m',
      'description':
          'The Exorcist is a supernatural horror film based on the 1971 novel of the same name by William Peter Blatty. The story revolves around a young girl named Regan MacNeil, who becomes possessed by a demonic entity. Her mother seeks the help of two priests to perform an exorcism and save her daughter.',
      'imageUrl': 'assets/images/slider/2.jpg',
      'ranking': '#5',
      'cast':
          'Ellen Burstyn as Chris MacNeil, Linda Blair as Regan MacNeil, Max von Sydow as Father Merrin, Jason Miller as Father Karras, Lee J. Cobb as Lieutenant Kinderman',
      'director': 'William Friedkin',
    },
    {
      'title': 'The Conjuring',
      'year': '2013',
      'ageRating': 'U/A 1+',
      'duration': '112 minutes',
      'description':
          'The Conjuring is a 2013 American supernatural horror film directed by James Wan, and written by Chad Hayes and Carey W. Hayes. It is the first installment in The Conjuring Universe franchise. Patrick Wilson and Vera Farmiga star as Ed and Lorraine Warren, paranormal investigators and authors associated with prominent cases of haunting. Their purportedly real-life reports inspired the Amityville Horror story and film franchise. The Warrens come to the assistance of the Perron family, who experienced increasingly disturbing events in their farmhouse in Rhode Island in 1971.',
      'imageUrl': 'assets/images/slider/3.jpg',
      'ranking': '#5',
      'cast':
          'Patrick Wilson, Vera Farmiga, Ron Livingston, Lili Taylor, Shanley Caswell, Hayley McFarland, Joey King, Mackenzie Foy, Kyla Deaver, Sterling Jerins',
      'director': 'James Wan'
    },
    {
      'title': 'The Haunting',
      'year': '1999',
      'ageRating': 'PG-13',
      'duration': '113 minutes',
      'description':
          'The Haunting is a 1999 American supernatural horror film directed by Jan de Bont, based on the 1959 novel "The Haunting of Hill House" by Shirley Jackson. The film stars Liam Neeson, Catherine Zeta-Jones, Owen Wilson, and Lili Taylor. The story follows a group of people who are invited to stay at Hill House, an isolated mansion with a dark history. As the night progresses, the guests experience a series of terrifying events that reveal the house\'s malevolent nature. The film was released by DreamWorks Pictures on July 23, 1999.',
      'imageUrl': 'assets/images/slider/4.jpg',
      'ranking': '#21',
      'cast':
          'Liam Neeson, Catherine Zeta-Jones, Owen Wilson, Lili Taylor, Bruce Dern, Marian Seldes, Alix Koromzay, Todd Field, Virginia Madsen',
      'director': 'Jan de Bont'
    },
  ];

  static final List<NewHotItem> newHotItems = [
    NewHotItem(
      month: 'AUG',
      day: '09',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUzIvNMXReKgBtVTs0mESY2V-03rD8ML9Uzw&s',
      logoUrl:
          'https://freepngimg.com/save/177606-logo-pic-annabelle-png-image-high-quality/800x310',
      description:
          'While evading the cops in Agra, Rani and Rishu scheme to run away together. But when their plans go awry, Rani asks a mild-mannered admirer for help.',
      genres: 'Suspenseful • Romantic • Thriller • Love & Obsession',
    ),
    NewHotItem(
      month: 'JUL',
      day: '16',
      imageUrl:
          'https://irs.www.warnerbros.com/hero-banner-v2-tablet-jpeg/movies/media/browser/inception_banner.jpg',
      logoUrl: 'https://picfiles.alphacoders.com/678/67844.png',
      description:
          'A thief who enters the dreams of others to steal secrets is given a chance to have his criminal history erased as payment for the implantation of another person\'s idea into a target\'s subconscious.',
      genres: 'Science Fiction • Action • Thriller • Mind-Bending',
    ),
  ];

  static final List<Map<String, dynamic>> profile_items = [
    {
      'icon': Icons.edit,
      'text': 'Manage Profile',
    },
    {
      'icon': Icons.settings,
      'text': 'App Settings',
    },
    {
      'icon': Icons.person,
      'text': 'Account',
    },
    {
      'icon': Icons.help_outline,
      'text': 'Help',
    },
    {
      'icon': Icons.login,
      'text': 'Sign Out',
    },
    {
      'icon': '',
      'text': 'Version: 8.123.0 build 9',
    }
  ];
}
