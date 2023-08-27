// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace, avoid_print, unused_element, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookTemplate.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/data/literature.dart';
import 'package:kaio/main.dart';
import 'package:kaio/Literature/BookShape.dart';

class LiteraturePage extends StatefulWidget {
  LiteraturePage({super.key});
  @override
  State<LiteraturePage> createState() => _LiteraturePageState();
}

class _LiteraturePageState extends State<LiteraturePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kaio',
            style: kSubHeading,
          ),
          backgroundColor: Theme.of(context).primaryColor
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  hintStyle: kNormalText,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor, width: 2)),
                ),
              ),
            ),
            Text('My Books', style: kHeading),
            SizedBox(
              height: devH * 0.01,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookShape(
                        name: BookTemplate(
                            genre: 'POETRY',
                            lang: 'KASHMIRI',
                            pages: '16',
                            finalPath:
                                'assets/images/Literature/Poetry/museeki.jpg',
                            bookName: 'Museeki',
                            author: 'Rasool Mir Shah Abadi',
                            link:
                                'https://drive.google.com/file/d/1EaESB3vjDe6vHT5k9aw5WBvFn0nHRuce/view?usp=sharing',
                            descriptionText:
                                'Rasul Mir (Kashmiri: رَسوٗل میٖر) also known as Rasul Mir Shahabadi, was a romantic poet of Kashmir in the 19th century. He was born at Doru Shahabad, a historic town in Anantnag district of Kashmir. He is often referred to as imām-e-ishqiya shairi (The epitome of romantic poetry) for his literary contribution to Kashmiri romanticism. Mir was said to have been alive in around 1855 when Mahmood Gami and Soch Kral saeb died. He died a few years before Maqbool Shah Kralawari. Though, Muhammad Y. Taing, in his book کلیاتِ رسول میر /(Kulliyat-e-Rasul Mir/) mentions of a document from Revenue Department, Anantnag, dated 5 April 1889, acknowledging Rasul Mir as a muqdam (village chieftain, in accord to the agrarian system of Kashmir).He is one of the most celebrated Kashmiri poets and is popularly called as the John Keats of Kashmir. He formally inaugurated Gazal to Kashmiri poetry.'),
                        imagepath:
                            'assets/images/Literature/Poetry/museeki.jpg'),
                    BookShape(
                        name: BookTemplate(
                            genre: 'POETRY',
                            lang: 'KASHMIRI',
                            pages: '173',
                            finalPath:
                                'assets/images/Literature/Poetry/rasol.jpg',
                            bookName: 'Kulliyat-e-Rasol-Mir',
                            author: 'Rasol Mir',
                            link:
                                'https://drive.google.com/file/d/180K0wx9WLQu8BPYVlfaNVlwtTLry-mIN/view?usp=sharing',
                            descriptionText:
                                'Rasul Mir (Kashmiri: رَسوٗل میٖر) also known as Rasul Mir Shahabadi, was a romantic poet of Kashmir in the 19th century. He was born at Doru Shahabad, a historic town in Anantnag district of Kashmir. He is often referred to as imām-e-ishqiya shairi (The epitome of romantic poetry) for his literary contribution to Kashmiri romanticism. Mir was said to have been alive in around 1855 when Mahmood Gami and Soch Kral saeb died. He died a few years before Maqbool Shah Kralawari. Though, Muhammad Y. Taing, in his book کلیاتِ رسول میر /(Kulliyat-e-Rasul Mir/) mentions of a document from Revenue Department, Anantnag, dated 5 April 1889, acknowledging Rasul Mir as a muqdam (village chieftain, in accord to the agrarian system of Kashmir).He is one of the most celebrated Kashmiri poets and is popularly called as the John Keats of Kashmir. He formally inaugurated Gazal to Kashmiri poetry.'),
                        imagepath: 'assets/images/Literature/Poetry/rasol.jpg'),
                    BookShape(
                        name: BookTemplate(
                            genre: 'POETRY',
                            lang: 'KASHMIRI',
                            pages: '192',
                            finalPath:
                                'assets/images/Literature/Poetry/shamas.jpg',
                            bookName: 'Kuliyaat-e-Shamas-Fakir',
                            author: 'Shamas Fakir',
                            link:
                                'https://drive.google.com/file/d/1oI87TnRSI3nF-Yj6uk0fA_0l-S2if0xT/view?usp=sharing',
                            descriptionText:
                                'Shamas Faqir ( شمس فقیر) was a Kashmiri Sufi poet. He belonged to the Qadiriyya silsila of Sufism. Shamas Faqir was born in 1843, to a poor family in Chinkral Mohalla, Habba Kadal Srinagar, Kashmir. He didn\'t receive formal education but became apprenticed to Niama Saeb, a Kashmiri Sufi poet. He became a disciple of Souch Maliar, Abdul Rehman of Barzulla, Atiq-Ullah of Gulab Bagh, Mohammad Jammal, and Rasool Saeb. When he was 25, he left for Amritsar, in the Indian Punjab, where he became a disciple of another Sufi Saint.[who?] After his return from Amritsar, he lived in Anantnag, Kashmir, where he married. He returned to his ancestral home in Srinagar for some time, subsequently meditating for six months in a cave at Qazi Bagh in the Budgam district of Kashmir. Following this he lived in Braripora Krishpora. Many of his poems are on the theme of a mystic\'s quest for the primal cause of the universe. Shamas Faqir\'s poems used the Kashmiri idiom of his time and words from Persian, Arabic, and Sanskrit. His poem Merajnama recounts Prophet Muhammad’s spiritual journey to God. Shamas Faqir died in 1901 and was buried at Krishpora Shamasabad Budgam Kashmir. He had two sons and a daughter.[1] Shamas Faqir\'s grand sons Sheikh Peer Mehraj ud din (Aasi Shamas) and his younger brother Sheikh Peer Mohammad Altaf (sons of Sheikh Peer Gh Mohidin Sahib (RAH) kami wali presently at his place. Sheikh Peer Mehraj ud din (aasi shamas) is also a poet (shayar).'),
                        imagepath:
                            'assets/images/Literature/Poetry/shamas.jpg'),
                    BookShape(
                        name: BookTemplate(
                            genre: 'POETRY',
                            lang: 'KASHMIRI',
                            pages: '489',
                            finalPath:
                                'assets/images/Literature/Poetry/mehjoor.jpg',
                            bookName: 'Kulliyaat-e-Mahjoor',
                            author: 'Mahjoor',
                            link:
                                'https://drive.google.com/file/d/1pZJzBITrxKISL9tRUOuhSqIbH0c4igmJ/view?usp=sharing',
                            descriptionText:
                                'Mahjoor\'s real name was Ghulam Ahmad. But as a poet, he adopted the pen name \'Mahjoor\'. He was born in eighteen hundred and eighty-five in Metragam. He has written poetry in Persian and Urdu as well. Mahjoor worked in Kashmir as a patwari. Along with his official duties, he used to write poetry in Kashmiri. Mahjoor had his first Kashmiri poem published in 1918. After this, he composed poetry only in Kashmiri. His songs became very popular. He wrote on such topics as love, communal harmony, and social reform, and also wrote on the plight of the Kashmiris. He wrote about youth, the flowers of Nishat Garden, a peasant girl, a gardener, the golden oriole, and a Free Kashmir. At that time, such songs were unknown in Kashmiri poetry. It was Mahjoor who gave these to us. Mahjoor was sixty-seven years old when he passed away in 1952. The death of Mahjoor was a great loss to both the Kashmiri language and (Kashmiri) poetry. But, Mahjoor\'s songs are still on the lips of every Kashmiri. Through these songs, his name will live forever. '),
                        imagepath:
                            'assets/images/Literature/Poetry/mehjoor.jpg'),
                    BookShape(
                        name: BookTemplate(
                            genre: 'POETRY',
                            lang: 'KASHMIRI',
                            pages: '200',
                            finalPath:
                                'assets/images/Literature/Poetry/kral.jpg',
                            bookName: 'Kulliayt-e-Soch-Kral',
                            author: 'Soch Kral',
                            link:
                                'https://drive.google.com/file/d/1YzDpEqGhUPE0whRrYtFHYyvWi91nNlaw/view?usp=sharing',
                            descriptionText:
                                'Soch Kral was born in 1775 at Koel, Pulwama, Kashmir. Soch Kral was from a mystic background. His father Arif Kral was a disciple of Kashmiri poet Mumin Sahib. His mother\'s name was Zooni. His parents were very pious and noble It’s said that Arif Kral and his wife Zooni had no child. After fifteen years of their marriage, a fanafillah arrived in the village saying “Does anyone need a child?”. Arif Kral listening to this left his work and went to him. The mystic gave him two sugar-coated candies one for Arif Kral and another for his wife, Zooni, on the condition that the child will be given back to him after twelve years. The parents agreed on this condition. A male baby was born to them whom they named Ismail. After some years the Fana fillah arrived in the village and asked Ismail his name. He suggested Arif Kral name Ismail as Soch Kral. It is said that this mystic after twelve years as per the condition took Soch Kral from Koel to Inder Pulwama. Thus began the mystic journey of the great son of the soil. Soch Kral was too much interested in poetry. His father Arif Kral sent him to school but Soch Kral showed no apparent interest to attend the school or his classes. So his father Arif Kral insisted he help him in his generations-old potter profession. In this way, Soch Kral began to sell terracotta pots. The terracotta industry taught him valuable lessons. Soch Kral had never been in school but he had a good hold in the Persian language. He spoke the language of the common people and used poetry as a too tool to pass his message of truth to the people. A number of miracles are attributed to Sufi poet Soch Kral. It’s said that Some people in the Ratnipora vicinity were unhappy to see the huge rush of people flocking to Soch Kral for spiritual healing. They started a hate campaign against Soch Kral sb. A number of tricks were used to defame this great mystic poet but Soch Kral remained silent. Once more than a hundred people assembled by these people to have lunch and tea at Soch Kral’s residence without informing Soch Kral sb. His wife was shocked. She was only to be assured by Soch Kral that everything will be fine. The tea vessel never got empty despite people having four-five cups of salt tea. Similarly, lunch was served to those in the house, making them understand the mystic powers of Soch Kral. After some time another Karamat happened when Soch Kral was in Ratinpora to sell his earthen pots. He saw a group of people dragging a dead Bull from the area and when he asked them the reason, they laughed and replied, “Don’t interfere in our matter. This Bull has the credit of his master and he died without returning his master’s credit”. Soch Kral looked towards the Bull and said,\'O Bull get up by the order of Allah and return the credit of your master\'. The entire Ratnipora was astonished to see the bull coming to life again and rushing toward his master. This Karamat didn’t go well with the Peers who thrashed him on the next day of this incident. It’s believed at this moment, Soch Kral prayed: “Ya Allah Chararas (Chrar-i Shareef) Kar Thhop Tae Ratinporis Hya Tchoup” (block the Charar-i Shareef and bite the Ratinpora). Legend has it that there was a massive fire in the Charar-e-Shareef area in Budgam which got extinguished immediately after the prayers one log flew and fell into a house of a Peer at Ratinpora and all the houses of Peers were gutted in the fire. After this incident, Peers apologized to Soch Kral.'),
                        imagepath: 'assets/images/Literature/Poetry/kral.jpg'),
                    BookShape(
                        name: BookTemplate(
                            genre: 'POETRY',
                            lang: 'KASHMIRI',
                            pages: '146',
                            finalPath:
                                'assets/images/Literature/Poetry/argami.jpg',
                            bookName: 'Argami',
                            author: 'Lali Sob Argami',
                            link:
                                'https://drive.google.com/file/d/1EDcfHAjM9fBk48fAIbAtha-wDuQIyXto/view?usp=sharing',
                            descriptionText:
                                'He was born on 11 March 1923 in the village Aragam in Bandipore district in a poor family. His father was Dawood Malik and his mother was called Doulat Deddi. Malik received only primary education. At the age of 17, he learned about Sufism from Shaban Solur. After his death, he was guided in Sufism by Ama Kawa, a Sufi from Charari Sharief. Malik married a woman named Gasha from the same village. They had one daughter and three sons. He worked as a laborer, milkman, and imam. He sang Sufi poetry and himself authored numerous poems in the Kashmiri language; two books of his poetry have been published, including Kuliyati Lala Aragami (2008). As a Sufi teacher, he attracted followers from across the Kashmir Valley. Malik died on 27 August 1988. A shrine built at his ancestral home at Aragam attracts pilgrims, especially on his death anniversary on 6 and 7 May.'),
                        imagepath:
                            'assets/images/Literature/Poetry/argami.jpg'),
                    BookShape(
                        name: BookTemplate(
                            genre: 'POETRY',
                            lang: 'KASHMIRI',
                            pages: '229',
                            finalPath:
                                'assets/images/Literature/Poetry/rahim.jpg',
                            bookName: 'Kulliyat-e-Rahim-Sopori',
                            author: 'Rahim Sopori',
                            link:
                                'https://drive.google.com/file/d/1Ltrn1SHKgrj_88H0PNyD_wb9jXru-kCX/view?usp=sharing',
                            descriptionText:
                                'Abdul Rahim Shah popularly known as Rahim Saeb Sopore was a traditional mystic poet of Kashmir who epitomised the cultural creation in a significant manner. His contribution to Kashmiri Sufi poetry can not be ignored. Like other Sufi poets of Kashmir, Rahim Saeb Sopori too was the embodiment of Kashmiri language and literature who too preferred to use his own Kashmiri dialect for conveying his message and thoughts and connected people with their language and culture. No authentic biography of this mystic poet of our bygone era is found, whatever we possess today is what we come across in his verses and some oral traditions which pass through from generation to generation.'),
                        imagepath: 'assets/images/Literature/Poetry/rahim.jpg'),
                    BookShape(
                        name: BookTemplate(
                            genre: 'POETRY',
                            lang: 'KASHMIRI',
                            pages: '72',
                            finalPath:
                                'assets/images/Literature/Poetry/fakir.jpg',
                            bookName: 'Shamas Fakir',
                            author: 'Shamas Fakir',
                            link:
                                'https://drive.google.com/file/d/1RiPt8jX7ZssNGfx-M_0rATJP-NTUv_UA/view?usp=sharing',
                            descriptionText:
                                'Shamas Faqir ( شمس فقیر) was a Kashmiri Sufi poet. He belonged to the Qadiriyya silsila of Sufism. Shamas Faqir was born in 1843, to a poor family in Chinkral Mohalla, Habba Kadal Srinagar, Kashmir. He didn\'t receive formal education but became apprenticed to Niama Saeb, a Kashmiri Sufi poet. He became a disciple of Souch Maliar, Abdul Rehman of Barzulla, Atiq-Ullah of Gulab Bagh, Mohammad Jammal, and Rasool Saeb. When he was 25, he left for Amritsar, in the Indian Punjab, where he became a disciple of another Sufi Saint.[who?] After his return from Amritsar, he lived in Anantnag, Kashmir, where he married. He returned to his ancestral home in Srinagar for some time, subsequently meditating for six months in a cave at Qazi Bagh in the Budgam district of Kashmir. Following this he lived in Braripora Krishpora. Many of his poems are on the theme of a mystic\'s quest for the primal cause of the universe. Shamas Faqir\'s poems used the Kashmiri idiom of his time and words from Persian, Arabic, and Sanskrit. His poem Merajnama recounts Prophet Muhammad’s spiritual journey to God. Shamas Faqir died in 1901 and was buried at Krishpora Shamasabad Budgam Kashmir. He had two sons and a daughter.[1] Shamas Faqir\'s grand sons Sheikh Peer Mehraj ud din (Aasi Shamas) and his younger brother Sheikh Peer Mohammad Altaf (sons of Sheikh Peer Gh Mohidin Sahib (RAH) kami wali presently at his place. Sheikh Peer Mehraj ud din (aasi shamas) is also a poet (shayar).'),
                        imagepath: 'assets/images/Literature/Poetry/fakir.jpg'),
                    BookShape(
                        name: BookTemplate(
                            genre: 'POETRY',
                            lang: 'KASHMIRI',
                            pages: '59',
                            finalPath:
                                'assets/images/Literature/Poetry/wali.jpg',
                            bookName: 'Gash Kati Aaw',
                            author: 'Wali Bhat',
                            link:
                                'https://drive.google.com/file/d/1E_jEeah6Y--BIM2aq4fAJ6q_vPSuP_pk/view?usp=sharing',
                            descriptionText:
                                'Wali Mohmad Aseer Kishtwari was born to Kh. Ghulam Qadir Batt Berwari at village Berwar on 2nd of August 1954 is a famous Historian, Author, Educationist, Writer & thinker. Wali Mohmad passed the Middle and Higher Secondary Elective examinations with good marks from Islamaia Faridia School, Kishtwar and M.L. Higher Secondary School Kishtwar. He passed his B.A. examination from Govt. Degree College, Bhaderwah in 1974. He did his MA in Urdu from University of Jammu and then he qualified KAS in the year 1977. He worked as teacher in Islamia Faridia High School, Kishtwar. On his professional performance and natural capability he was appointed on the important post of Distt. Treasury Officer Doda. He also functioned as Chief Accounts Officer, District Fund Office, Doda, from 1986 to 1985. After performing his duties nicely for about eleven years he was transferred to State Sports Council. He was soon shifted to Additional Treasury Talab Tillo, Jammu and then to Additional Treasury Old Sectt. Jammu. In April 1999 he was posted as Deputy Director Accounts and Treasuries Jammu. He had served as Director General of Accounts.'),
                        imagepath: 'assets/images/Literature/Poetry/wali.jpg'),
                  ],
                )),
            SizedBox(
              height: devH * 0.01,
            ),
            Text(
              'Book Shelf',
              style: kHeading,
            ),
            SizedBox(
              height: devH * 0.01,
            ),
            DefaultTabController(
              length: 4,
              child: Expanded(
                child: Column(
                  children: [
                    Theme(
                      data: myTheme,
                      child: TabBar(
                        indicator: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(25.0)),
                        tabs: [
                          Tab(
                            text: 'Poetry',
                          ),
                          Tab(text: 'Prose'),
                          Tab(text: 'History'),
                          Tab(text: 'New'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Poetry(),
                          Prose(),
                          History(),
                          New(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Poetry() {
    return GridView.count(crossAxisCount: 2, children: poetry);
  }

  Widget History() {
    return GridView.count(crossAxisCount: 2, children: history);
  }

  Widget Prose() {
    return GridView.count(crossAxisCount: 2, children: prose);
  }

  Widget New() {
    return GridView.count(crossAxisCount: 2, children: newbook);
  }
}
