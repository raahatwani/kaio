import 'package:kaio/Culture/carouselpage.dart';
import 'package:kaio/MainScreens/Culture.dart';

List<carouselContainer> cultureCarousel = [
  carouselContainer(
    imagePath: 'assets/images/Culture/Main/language.png',
    NextPage: CarouselPage(
        imagePath: 'assets/images/Culture/Main/language.png',
        listname: wildlife),
  ),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/religion.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/religion.png',
          listname: shrine)),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/artscrafts.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/artscrafts.png',
          listname: treks)),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/customs.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/customs.png',
          listname: pilgrim)),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/festivals.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/festivals.png',
          listname: heritage)),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/food.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/food.png',
          listname: heritage)),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/musicdance.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/musicdance.png',
          listname: heritage)),
];

List<Culturecard> wildlife = [
  Culturecard(
    heading: 'Dachigam',
    description:
        'Splendid forests, magnificent scenery and unique topographical variety are the factors that make Dachigam National Park the favourite of tourists. Situated 22 km from Srinagar, Dachigam national park is simply a dreamland for jungle enthusiasts. The park covers an area of 141 square kilometres with some of the most exotic flora and fauna species. The appearence of the park changes every season. In winters, the park is covered with white snow, while the spring brings bountiful greenery. Waterfalls and streams are unveiled in summers and vast grassy meadows and scented flowers can be observed in higher regions. Autumn is characterised with pastel shades of red, gold, yellow and orange on the trees and leaves.',
    imagePath: 'assets/images/Destination/Main/Carousel/dachigam.jpg',
  ),
  Culturecard(
      heading: 'Hemis High Altitude Wildlife Sanctuary',
      description:
          'A renowned sanctuary of Ladakh, Hemis is popular for Snow Leopards, Shapu, Bharal, Wild Sheeps and Goats. Being the largest park in South Asia and highest in the world, the Hemis High Altitude Wildlife Sanctuary covers an area of about 3,350 sq. Km and is located at 12000 feet from sea level. During winter, the nearby Zanskar River and its tributaries become frozen and the temperature drops typically to -15°C to -20°C at night. Although summer temperatures can reach upto 30°C in the lower elevations, snowfall can occur at any time of year. The best time for mammal and bird viewing is considered September to March, and March to May respctively. Trekking routes are also open from mid June to mid October. Take a jeep or elephant safari to spot various rare animals and explore the dense woods.',
      imagePath:
          'assets/images/Destination/Main/Carousel/gulmargBiosphere.jpeg'),
  Culturecard(
      heading: 'Kishtwar High Altitude National Park',
      description:
          'Established in 1981, the Kishtwar National Park is located in Jammu region, on a plateau above the Chenab River and below the Nagin Sheer glacier. The park is unique in terms of offering waterfalls, trekking, and sapphire mines of paddar at an altitudinal range of 1,700 to 4,800 meters above sea level. Along with different types of forest vegetation, one can spot about 15 species of mammals and about 50 species of birds in the Kishtwar park. The 400 sq km park is covered with exposed granite and marble rocks. Mostly people visit Kishtwar park in the months of June To October.',
      imagePath: 'assets/images/Destination/Main/Carousel/kishtwar.jpg'),
  Culturecard(
      heading: 'Overa National Park',
      description:
          'This small national park, covering an area of 32.27 sq km, is situated near Pahalgam, 76 km from Srinagar. Set amidst stunning mountain landscapes, grassy hills and deep valleys, the park is best known for a number of pheasant species. Apart from pheasants, there are more than 13 species of rare and endangered mammals and over 80 species of birds in Overa. A major part of the Overa National Park is covered by conifers, Pinus Griffithii, Abies Pindrow, Aesculus Indica, Morus Alba, Juglans Regia.',
      imagePath: 'assets/images/Destination/Main/Carousel/OveraNational.jpg')
];

List<Culturecard> treks = [
  Culturecard(
      heading: 'Sonmarg to Naranag',
      description:
          'This is a moderate trek that takes you through some of the most beautiful scenery in Kashmir. You will hike through forests, meadows, and over glaciers, with stunning views of the mountains all around you.',
      imagePath: 'assets/images/Destination/Main/Carousel/sonmargTrek.webp'),
  Culturecard(
      heading: 'Pahalgam to Aru',
      description:
          'This is a challenging trek that is only for experienced hikers. You will hike through high altitudes and over snow-capped passes, with stunning views of the Himalayas all around you.',
      imagePath: 'assets/images/Destination/Main/Carousel/AruTrek.jpg'),
  Culturecard(
      heading: 'Dras trek',
      description:
          'This is a very challenging trek that is only for experienced hikers. You will hike through high altitudes and over snow-capped passes, with stunning views of the Karakoram range all around you.',
      imagePath: 'assets/images/Destination/Main/Carousel/dras.avif'),
  Culturecard(
      heading: 'Gangbal trek',
      description:
          'This is a moderate trek that takes you to the Gangbal Lake, which is one of the most beautiful lakes in Kashmir',
      imagePath: 'assets/images/Destination/Main/Carousel/gangbalTrek.webp')
];
List<Culturecard> heritage = [
  Culturecard(
    heading: 'Hari Parbat Fort',
    description:
        'Hari Parbat  also known as Kooh-e-Maran lies on the west of Dal Lake in Srinagar. This Mughal structure was built by an Afghan Governor Atta Mohammed Khan in the 18th century. Surrounded by commendable structures from all religions, this fort sits at the top giving a spectacular view of Dal Lake and provides a top view of Makhdoom Sahib shrine.',
    imagePath: 'assets/images/Destination/Main/Carousel/hariparbatfort.jpg',
  ),
  Culturecard(
    heading: 'Pari Mahal',
    description:
        'Seven-terraced garden, also called the abode of fairies or the home of angels, the historical monument sits on top of the Zabarwan range overlooking Srinagar and the Dal Lake.It was built by Dara Shikoh, the eldest son of the Mughal Emperor Shah Jahan. It is believed that the mahal was once a Buddhist monastery. Later on, it served as a school of astrology for prince Dara Shikoh. The architecture of Pari Mahal is a traditional Islamic type of architecture while the surrounding gardens are exceptionally well maintained.',
    imagePath: 'assets/images/Destination/Main/Carousel/pariimahal.jpg',
  ),
  Culturecard(
    heading: 'Martand Sun Temple',
    description:
        'Martand Sun Temple  also referred to as the Dream of Stones is located in Anantnag, Jammu and Kashmir, India, on Surya Mandir Road. Lalitaditya Muktapida, the ruler of an empire of the Karkota dynasty, constructed the temple throughout the 8th century CE. Another Ancient title for the worshipped Hindu Sun god is Martand. Lord Sun is honoured at this shrine.',
    imagePath: 'assets/images/Destination/Main/Carousel/martandsuntemple.jpg',
  ),
  Culturecard(
    heading: 'Parihaspora Ruins',
    description:
        'Parihaspora, locally known as Kani Shahar, is believed to be the ancient capital of Kashmir. The town falls at a distance of 20 kilometers from the summer capital Srinagar.The city of Parihaspora was built on a plateau above the river Jhelum by the king Lalitaditya Muktapida and served as the capital of Kashmir during his reign. The town falls at the tail end of Baramulla district.',
    imagePath: 'assets/images/Destination/Main/Carousel/parihaspora.jpeg',
  ),
  Culturecard(
    heading: 'Pathar Mosque',
    description:
        'Pathar Mosque, known locally as Naev Masheed,is a Mughal era stone mosque located in the old city of Srinagar, in the Indian state of Jammu and Kashmir. It is located on the left bank of the River Jhelum, just opposite the shrine of Khanqah-e-Moula. It was built by Mughal Empress Noor Jehan, the wife of emperor Jehangir, in 1623, for Shi’a Muslim Population.',
    imagePath: 'assets/images/Destination/Main/Carousel/patharmosque.jpg',
  ),
  Culturecard(
    heading: 'Kathi Darwaza',
    description:
        'Kathi Darwaza is considered to be the main entrance to the Hari Parbat Fort situated on the banks of the Dal Lake. The Sangin Darwaza constitutes another important gate of the Fort. A central domed chamber with two bays on either side makes up the structure of the Kathi Darwaza. On the walls and ceiling of the Kathi Darwaza are etched a few Persian memorial inscriptions that shed light on the Persian culture and customs that were once followed by the Mughal rulers.',
    imagePath: 'assets/images/Destination/Main/Carousel/kathidarwaza.jpg',
  ),
  Culturecard(
    heading: 'Khanqah-e-Moula',
    description:
        'Khanqah-e-Moula is situated in Srinagar, on the banks of the river Jhelum. One of the oldest Muslim shrines in Kashmir, the khanqah was built by Sultan Sikander built in 1395. The Khanqah is a wooden structure whose chief aesthetic Culturecis its beautifully carved eaves and hanging bells. The interiors are richly carved and painted, and the antique chandeliers give it an air of opulence. The Khanqah-i-Mualla is dedicated to Muslim preacher Mir Syed Ali Hamdani.',
    imagePath: 'assets/images/Destination/Main/Carousel/khanqahemoula.jpg',
  ),
  Culturecard(
    heading: 'Budshah Tomb',
    description:
        'The Budshah Tomb is a superb example of the traditional Shahmiri architectural brilliance that has not yet been discovered anywhere in India. Near Zaina Kadal in Srinagar, on the right riverside of the River Jhelum, is the monument or memorial place. In comparison to other historic buildings and tombs, Budshah Tomb is therefore regarded as the only one of its kind in and around Kashmir. This Tomb is a brick structure in contrast to the conventional wooden Shahmiri architecture seen in Kashmir because it was built with bricks rather than wood during that period. ',
    imagePath: 'assets/images/Destination/Main/Carousel/budshahtomb.jpg',
  ),
  Culturecard(
    heading: 'Jamia Masjid',
    description:
        'Jamia Masjid is a 600-year-old mosque in Srinagar, located in the Nowhatta area amidst the bustle of local bazaars. The tranquil mosque is known for its unique architecture, the highlight being the 378 wooden Deodar pillars. The mosque becomes especially crowded on Fridays. The fountain inside the mosque premise is used for ablution or wadu.Jamia Masjid was built by Sultan Sikandar Shah Kashmiri Shahmiri in 1394, under the orders of Mir Mohammad Hamadani, who was the son of Said-ul-Auliya Mir Sayyid Ali Hamadani. Sultan Sikandar\'s son, Zain-ul-Abidin, later on, extended the Jama Masjid by including turret in the primary structure. The architectural style of the Jamia Masjid is inspired by the Indo-Saracenic style of architecture, and also bears similarities to Buddhist pagodas. ',
    imagePath: 'assets/images/Destination/Main/Carousel/jamiamasjid.jpg',
  ),
  Culturecard(
    heading: 'Akhund Mullah Shah Masjid',
    description:
        'Akhund Mullah Shah Masjid, also known as Dara Shikoh Masjid, is known better locally as the Mala Shah Masjid. Built in 1649 by Shah Jahan\'s eldest son, Dara Shikoh, for his spiritual mentor, this is a mosque within a mosque. It was built using grey limestone, featuring a glossy texture. The sanctuary is separated from the main building by a surrounding courtyard. A stone lotus with an inscription crowns the mosque’s podium.',
    imagePath:
        'assets/images/Destination/Main/Carousel/akhundmullahshahmasjid.jpg',
  ),
  Culturecard(
    heading: 'Burzahom',
    description:
        'Burzahom Archaeological Site is a prehistoric settlement located in the village of the Burzahom in the Srinagar District of Jammu and Kashmir, India. Located in the valley of Kashmir, the archaeological excavations of the ancient site and remains at the Burzahom archaeological site date back to 3000 BC and 1000 BC. The large cache of tools and implements made of bone and stone found at the site shows that the inhabitants were hunting and farming. It is located on a \'karewa\' between the banks of the Dal Lake and the Zabarvan hills, about 5 km from the famous Mughal garden of Shalimar. Burzahom Archaeological Site is located at approx 14km from Srinagar',
    imagePath: 'assets/images/Destination/Main/Carousel/burzahom.jpg',
  ),
  Culturecard(
    heading: 'Harwan Monastery',
    description:
        'On the outskirts of Srinagar in Harwan, lie the ruins of an old Buddhist Monastery. It is hard to imagine the importance of the site from its ruins. But this ancient monastery played a pivotal role in the history of Buddhism. It is here, that the 4th Buddhist council of the Mahayana (Sarvastivada) school of Buddhism was held sometime in the 1st or 2nd century CE, on the orders of the Kushana emperor Kanishka I. It was also the home to one of the greatest Buddhist masters of his time, Nagarjuna (150-250 CE) , who propounded the theory of ‘Sunyata’ or ‘Emptiness’ which went on to revolutionize Buddhist thought. Sadly, the significance of the site seems to have been lost somehow in the modern times. As has the significance of Kashmir, in the history of Buddhism.',
    imagePath: 'assets/images/Destination/Main/Carousel/harwanmonastry.jpeg',
  ),
];
List<Culturecard> shrine = [
  Culturecard(
    heading: 'Hazratbal Shrine',
    description:
        'Hazratbal Shrine is the holiest shrine in Kashmir located on the banks of Dal Lake in Srinagar. This shrine houses a relic “Moi-e-Muqaddas” believed to be a strand of Prophet Muhammad’s hair. On specific occasions the relic hair is brought before the People. The Hazratbal shrine is the most popular shrine in Srinagar and is the most visited place in Srinagar. It is known for its stunning architecture and peaceful ambiance. Initially this place was known as Ishrat Jahan and later on it is convereted to a prayer by Shah Jahan in 1634. The shrine is surrounded by a beautiful garden and presents a beautiful view of Dal lake.',
    imagePath: 'assets/images/Destination/Main/Carousel/hazratbal.JPG',
  ),
  Culturecard(
    heading: 'Dastgeer Sahib',
    description:
        'Dastgeer Sahib , a Sufi shrine dedicated to Sheikh Syed Abdul Qadir Jelani, also known as Gous- E -Azam or the Great Helper. The shrine is believed to have been built in the 17th century and contains the relics of Dastgeer Sahib. It is also a center for Sufi gatherings and spiritual retreats. The shrine is believed to be around  200 years old and was constructed in 1806 by an Afghan traveller who presented a relic belonging to Sheikh Syed Abdul Qadir Jelani to the then governor of Kashmir. The relic is a hair strand of the saint, which is locally called Mouia Pak.',
    imagePath: 'assets/images/Destination/Main/Carousel/dastagirsahab.jpg',
  ),
  Culturecard(
    heading: 'Makhdoom Sahib',
    description:
        'Makhdoom Sahib shrine is one of the sacred shrine in Kashmir and important part of Sufi Tourism in Kashmir,  lies lies below the Mughal Fort, towards the south of Hari Parbat fort in Srinagar and is visited by thousands of devotees every year. This shrine is dedicated to Sheikh Hamza Makhdoom, who was sometimes referred to as  Makhdoom Sahib, Hazrat Sultan, Sultan-ul-Arifeen and Mehboob-ul-Alam.',
    imagePath: 'assets/images/Destination/Main/Carousel/makhdoomsahib.webp',
  ),
  Culturecard(
    heading: 'Baba Reshi Shrine',
    description:
        'Baba Reshi Shrine is one of the famous and sacred shrine in Kashmir lies district Baramulla. The shrine is located near Gulmarg in Baramulla district and is a popular religious and tourist destination.This shrine is dedicated to Baba Payamuddin Reshi, who is widely respected by both Muslims and Hindus in the region. Baba Reshi renounced his worldly life and devoted himself to the service of God and humanity.The shrine is surrounded by a beautiful forest area, where one can enjoy the scenic views of surroundings. ',
    imagePath: 'assets/images/Destination/Main/Carousel/babareshi.jpg',
  ),
  Culturecard(
    heading: 'Aishmuqam shrine',
    description:
        'Aishmuqam shrine is located in Ashmuqam ,One huge place for  Sufi Tourism in Kashmir , about 15 km from Anantnag town on the route to Pahalgam.The shrine is considered as one of the most visited and prominent shrines in Kashmir.  It was constructed in the honour of Shiekh Zain-ud-din, who was one among chief disciples of Nund Rishi.The Aishmuqam dargah is surrounded by lush greenery and offers a panoramic view of the valley below. The atmosphere is peaceful and serene, with the sound of birds and prayers filling the air.',
    imagePath: 'assets/images/Destination/Main/Carousel/aishmuqam.jpg',
  ),
  Culturecard(
    heading: 'Naqshband Sahib',
    description:
        'This shrine is named after the popular Sufi saint from Bukhara in Uzbekistan, Syed Baha-ud-Din Naqshband the founder of a Naqshbandi Sufi order. The mystic never visited Kashmir but his followers made a shrine in his name. In this Khankah, one of his descendants, Mohi-u-din, lies buried in a mausoleum.This shrine resides in Nowhatta on the road that links to Jamia Masjid and Dastgeer Sahib.',
    imagePath: 'assets/images/Destination/Main/Carousel/naqshbandsahab.jpg',
  ),
];
List<Culturecard> pilgrim = [
  Culturecard(
    heading: 'Amarnath Temple',
    description:
        'Surrounded by fairly steep hills, the Amarnath temple is considered to be Kashmir\'s oldest existing temple, dating back to the 5th century. This Shiva temple is situated in a narrow gorge on the far end of Lidder Valley at an altitude of 3888 m. The \'Yatra\' to Amarnath, one of the principal Hindu Dhams, starts from Chandanwari (2,895 m), 16 kms from Pahalgam, in the month of Sawan (July to August). The temple is famous for a \'Shiva-Lingam\', (a natural formation of ice, during the months of July/August) believed to wax and wane according the moon\'s cycle',
    imagePath: 'assets/images/Destination/Main/Carousel/amarnath.avif',
  ),
  Culturecard(
    heading: 'Shankaracharya Temple',
    description:
        'Shankaracharya Temple, located in the south-eastern part of Kashmir, is an excellent example to showcase the ancient Kashmiri architecture. Built on the picturesque location of Gopadari Hill, this Shiva temple stands on a solid rock and consists of an octagonal basement of 13 layers. The temple was built in 371 B.C. Since then, it has been repaired and renovated several times, yet it boasts of the architectural style of those times. The main shrine is built in a circular chamber and offers a wonderful view of Kashmir Valley, comprising of enchanting lakes and the majestic Himalayas.',
    imagePath: 'assets/images/Destination/Main/Carousel/shankracharya.jpg',
  ),
  Culturecard(
    heading: 'Kheer Bhawani',
    description:
        'This Hindu shrine, devoted to Goddess Ragnya Devi (a form of Maa Durga Bhagwati) is visited by a number of Muslims as well. The temple is called Kheer Bhawani because of numerous devotees who offer milk and kheer (a desert made of rice, milk and sugar) to the Goddess. Situated 27 km from Srinagar, the temple was built by King Maharana Pratap Singh in 1912.Another major charm of the temple is a hexagonal spring, which changes colour from time to time to various shades like red, pink, orange, green, blue, or milky white.',
    imagePath: 'assets/images/Destination/Main/Carousel/kheerbawani.jpg',
  ),
  Culturecard(
    heading: 'Sikh Gurudwara Chhatti Padshahi',
    description:
        'Chhatti Padshahi Gurudwara is one of the most peaceful and sacred places and the most important Sikh religious place in Kashmir. Located in Rainwadi, Srinagar, it is an important site for Sikh devotees who assemble here to offer prayers. The shrine is located on the southern gate of Hari Parbat Fort, i.e. Kathi Darwaza. This is the most important Gurudwara built by the sixth guru of Sikhs. A gurudwara has been built at every spot he had halted to preach, while travelling through Kashmir  The most important one among these is Chhatti Padshahi gurudwara.',
    imagePath: 'assets/images/Destination/Main/Carousel/chattipadshahi.jpg',
  ),
  Culturecard(
    heading: 'Sharika Devi Temple',
    description:
        'Sharika Devi Temple is situated on Hari Parbat in Srinagar and it is dedicated to Goddess Jagadamba Sharika Bhagwati. The holy idol of Goddess is having 18 arms who is sitting on Shri Chakra. This temple is regarded as one of the sacred sites for Kashmiri Pandits and also holds utmost importance by Hindu followers. The temple is visited by devotees in large number on the birthday of Goddess Sharika Bhagwati.',
    imagePath: 'assets/images/Destination/Main/Carousel/sharikadevi.jpg',
  ),
];
