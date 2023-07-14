
import 'package:flutter/material.dart';

import 'tag.dart';


class Data {
  final List<Tag> tags = [
    
      Tag(text: "chatbot",
      color: Colors.black26,
      pressed_color: Colors.blueAccent,
      ),
      Tag(text: 'ai',
      color: Colors.black26,
      pressed_color: Colors.blueAccent,),
      Tag(text: 'football',
      color: Colors.black26,
      pressed_color: Colors.blueAccent,),
      Tag(text: 'india',
      color: Colors.black26,
      pressed_color: Colors.blueAccent,),
    
  ];

  final List<String> category = [
    'world',
    'tech',
    'sports',
    '',
  ];

  final List<String> url = [
    'https://www.entefy.com/wp-content/uploads/2022/03/66c62e3c55c8a283e1f4d62ac2529312.jpg',
    "https://images.livemint.com/img/2023/02/02/600x338/OPENAI-CHATGPT-61_1674385133176_1674385133176_1675318887341_1675318887341.jpg",
    "https://assets.website-files.com/60a3c1fc44c5715c395770e7/60df8191a884c0804de8b15d_Depositphotos_24064653_l-2015.jpeg",
    "https://www.analyticsinsight.net/wp-content/uploads/2020/06/Artificial-Intelligence.jpg",
    "https://www.snexplores.org/wp-content/uploads/2021/08/LL_AI_feat-1030x580.jpg",
    "https://static.toiimg.com/imagenext/toiblogs/photo/blogs/wp-content/uploads/2023/07/image-74.jpg "
  ];

  final List<String> heading = [
    'Matchmaking in the time of AI: Tracing the Evolution of Indian Matchmaking',
    'The rise of chatbots: Artificial intelligence reshaping the business landscape',
    'Our chips are not down',
    'Self-preservation intelligence',
    'The youthful algorithm: Seizing the AI day in the global south',
    'Future of Football',
  ];

  final List<String> content = [
    '''
The evolution of matchmaking captures the development and change of mindset in urban singles.  Traditionally, matchmakers gave distilled information about potential matches catering to their agenda, centered around getting their limited clients married. On the technology front, new-age matchmaking platforms uncover the possibility of exploring many prospects without limiting what an offline matchmaker offers.

Besides this, the traditional matchmaking process involved the transfer of ownership of decision-making. There was an underlying family pressure to go with the options offered by a traditional matchmaker (who could be either a professional or a distant family member, or a neighbour), and given that situation, it was wishful to expect a conventional matchmaker to go out of the way to hunt for matches best suited for you. In addition, the offline world resulted in the reliance only on the matchmaker to know about the potential partner.

The emergence of online matchmaking removed the middleman and gave ownership of choosing the right match back to the partner-seekers, something even parents could not say no to. With online matchmaking, one can list everything they want to convey, providing unfiltered information to prospective partners and vice-versa.

Furthermore, given the decision-making process, this generation makes its own decisions, which reflects how they choose their partners. The shift from a rudimentary to an individualist approach to decisions and ownership of those decisions attributes to the preference for the online matchmaking route.
''',
    '''
  
 Since the time of evolution, we humans have never stopped learning nor exploring and this is what has made us evolve as the most intelligent species on earth. We humans have forever been eager to know the ‘how’s’ and ‘why’s’ of everything and we continue to experiment, engage and innovate every minute. The crux behind all the effort is towards simplifying lives and bridging the gap between demand and supply of goods and services in order to progress and prosper.

 With technological advancements, it is getting more and more easier to communicate across distances, build businesses and outshine on a global platform to thrive and multiply.

In this fast-paced and cut-throat competitive business scenario, businesses need multipronged solutions using a single innovative medium. This is where Chatbots play a pivatol role in the ever-growing digital space.

 Let’s explore what makes Chatbots so special? Why are they so crucial in today’s day and age? How can they amplify marketing efforts and maximize sales?

 Chatbots enhance customer relations, facilitate engagement, open up avenues for trade, financial inclusion and provide seamless access to services and solutions across multiple business verticals.
''',
    '''
Two recent events showed how India’s semiconductor programme allowed few course corrections to stay firmly on track. This may be the right time for India to take a bold gambit in all segments of chip making. And, course corrections show that strategy is flexible, not cast in stone.

US company Micron Technology’s decision to invest dollar 825 million in India for a Chip Assembly Testing and Packaging (ATP) unit is a significant boost for India’s semiconductor industry. India has cost-effective and skilled IT professionals, which positions it well in this segment. However, no one trusts a new player in a critical finishing task. The Micron deal addresses this concern by allowing the company to use chips produced in other countries for testing and packaging in India.

Foxconn’s withdrawal from the Vedanta-Foxconn deal, which aimed to establish a dollar 7-20 billion fabrication plant and facilities for manufacturing 28-nanometre (nm) chips, provides welcome lessons for course correction.
''',
    '''
The news that the Costa Rican lawmakers asked Chat GPT (a generative artificial intelligence tool) to draft a law to regulate AI came as a surprise to many people, leaving several others bemused. The notion of asking the culprit to design something to regulate itself was novel in itself, or so it seemed.

And the results were quite predictable if views of one of the Costa Rican lawmakers – draft law was a mere “list of good wishes” without much bite – has anything to go by. But just substitute artificial by intelligence of higher-order humans; lo and behold: we have scenarios playing out quite routinely around us. Sample these.

Lawmakers at the Centre or states gifting themselves handsome salary hikes (have you ever come across corporate employees being able to decide and approve salary hikes for themselves?). Or lawmakers themselves making the laws that would inhibit them to defect in future.

''',
    '''
In the digital theatre, the roles of “natives”, “immigrants”, and “tourists” have always illuminated disparities in technology adoption. Ponder on the youth who seamlessly navigated the sea of the internet before it was a wave for others. Think about the baby boomers who cautiously dipped their toes into the waters of personal computing and smartphones, embodying immigrants. Lastly, the tourists, those who remain on the shoreline, merely dabbling their feet or opting to enjoy the view from afar.

Now, a thrilling sequel is being scripted in the saga of Generative AI (GAI), with the Global South poised to seize the AI day. A youthful demographic – the under-25s comprise approximately 60% of Africa’s population compared to 30% in the Global North according to the World Bank – positions the South on the crest of a demographic wave, potentially propelling GAI into an era of unprecedented growth.

''',
    '''

In the long term, Indian football’s health depends on grassroots development. This is an uphill task given the lack of football culture in the country, barring a few pockets like the Northeast, Bengal, Kerala and Goa. Add to this the massive popularity of cricket that crowds out interest in other sports. Financial incentives too are lacking. To illustrate, the football team received a prize money of dollar 50,000 for winning SAFF 2023, while the Indian cricket team got dollar 800,000 for the runners-up position in the recent World Test Championship final. Earlier this year AIFF released its Vision 2047 to make India a footballing powerhouse. The roadmap includes goals like implementation of village grassroots programmes to reach 35 million children across 100 villages. This will require money, manpower and inspiration.
'''
  ];

// Since the time of evolution, we humans have never stopped learning nor exploring and this is what has made us evolve as the most intelligent species on earth. We humans have forever been eager to know the ‘how’s’ and ‘why’s’ of everything and we continue to experiment, engage and innovate every minute. The crux behind all the effort is towards simplifying lives and bridging the gap between demand and supply of goods and services in order to progress and prosper.

// With technological advancements, it is getting more and more easier to communicate across distances, build businesses and outshine on a global platform to thrive and multiply.

// In this fast-paced and cut-throat competitive business scenario, businesses need multipronged solutions using a single innovative medium. This is where Chatbots play a pivatol role in the ever-growing digital space.

// Let’s explore what makes Chatbots so special? Why are they so crucial in today’s day and age? How can they amplify marketing efforts and maximize sales?

// Chatbots enhance customer relations, facilitate engagement, open up avenues for trade, financial inclusion and provide seamless access to services and solutions across multiple business verticals.
}
