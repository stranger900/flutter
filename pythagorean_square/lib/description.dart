import 'package:flutter/material.dart';
import './brain.dart';

class Description extends StatelessWidget {

  int number;
  Description(this.number);
  List<int> resultOfSquare = Brain().calculateNumbers();
  List<int> resultSquare = Brain().calculateNumbers();
  String descriptionOfMap (int value){
    if (resultSquare[0] == 0){
      resultSquare[0] = 101;    }
    if (resultSquare[1] == 0){
      resultSquare[1] = 21;    }
    if (resultSquare[2] == 0){
      resultSquare[2] = 31;    }
    if (resultSquare[3] == 0){
      resultSquare[3] = 41;    }
    if (resultSquare[4] == 0){
      resultSquare[4] = 51;    }
    if (resultSquare[5] == 0){
      resultSquare[5] = 61;    }
    if (resultSquare[6] == 0){
      resultSquare[6] = 71;    }
    if (resultSquare[7] == 0){
      resultSquare[7] = 81;    }
    if (resultSquare[8] == 0){
      resultSquare[8] = 91;    }
    return description[value];
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text('Pythagorean Square'),),
    body:
//    Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//    children: [
//      Center(child: Text(value.toString(), style: TextStyle(fontSize: 20.0),)),
//      Center(child: Text(descriptionOfMap(value),style: TextStyle(fontSize: 20.0))),
//
//    ],
//    ),
        ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.white,
          ),
          itemCount: resultOfSquare.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Text(resultOfSquare[index].toString(),style: TextStyle(fontSize: 15.0)),
              title: Text(descriptionOfMap(resultSquare[index]), style: TextStyle(fontSize: 18.0),),
              subtitle: Text('Квадрат ${index + 1}'),
            ),
          ),
        )
    );
  }
}


Map<int, String> description = {
  //Квадрат 1. Характер
  101:'Цифра 1 в психоматриці відповідає за характер людини, його вольові якості, силу прагнення до влади, здатність відстояти свої погляди',
  1: 'Володар цієї цифри - витончений егоїст. Він не звертає уваги на оточуючих і прагне отримати вигоду з будь-яких ситуацій тільки для себе. Його мало цікавлять інші люди і те, чим вони живуть. Головне, що живе і повинен жити тільки він один.',
  11: 'Характер, дуже близький до егоїстичному. Вічно шукає схвалення оточуючих, навіть якщо для цього немає ніяких передумов. Любить хвалити себе. Здається собі найрозумнішим і талановитим і здивований, що оточуючі цього не помічають.',
  111: '«Золота середина». Характер спокійний, поступливий. Людина комунікабельна, не надто любить підкорятися, але і не рветься до керівництва. Якщо з такою людиною поговорити по душам, завжди можна знайти компроміс',
  1111: 'Людина сильного характеру, вольовий. Він не терпить брехні і підлабузництва, але іноді може піти на це заради близьких людей. Чоловіки з таким характером обирають роль професійних військових, жінки зазвичай владно тримають в руках сім\'ю',
  11111 : 'Диктатор і самодур. Заради соєю ідеї або примхи може пустити за вітром мільйони людських життів. Для досягнення мети йде, що називається, «по трупах». Якщо не вистачає даних для більшого, стає тираном в сім\'ї, відлюдником, в іншому випадку отримує психічний розлад. Наполегливий в намірах, в помсту, добре пристосовується. У більшості випадків має певної манією. Відчуває прихильність до дітей (своїм).',
  111111 : 'Рідкісна комбінація. Людина надзвичайно жорстока, але для близьких або «заради людства» здатна зробити неможливе. Вкрай неприємна в спілкуванні. Такі люди, на щастя, зустрічаються дуже рідко',
  //Квадрат 2. Біоенергія
  21: 'Двійок немає.Біополе відсутня. Канал відкритий для активного поглинання енергії. Таким людям подобаються старі речі (колекціонери). Вони непогано ставляться до оточуючих, але при цьому намагаються поживитися за рахунок інших, «поглинаючи» їх біополе. Винятки протилежного плану зустрічаються рідко.',
  2 : 'Звичайні в біоенергетичному плані люди. Вони уникають стресових ситуацій, сильних емоцій.Для них просто необхідні заняття фізкультурою і спортом, а ще краще йогою. Ці люди надчутливі до атмосферних перепадів',
  22 : 'Відносно великий запас біоенергії. Люди, з двома двійками здатні стати хорошими лікарями, медсестрами, санітарами. Їх покликання - медицина. В їх сім\'ях рідкісні нервові стреси.',
  222 : 'Знак екстрасенса. Можливо, він сам і не підозрює про таких здібностях, але лікує своїм біополем, навіть своєю присутністю. Такі люди довгі роки перебувають в очікуванні поштовху, для того щоб розкрити свій творчий хист.',
  2222 : 'Якщо зустрічається жінка, в яку всі закохані, або чарівний чоловік, то це пояснюється наявністю у них надлишку біоенергії, якої вони готові з усіма поділитися. На жаль, ці люди дуже вразливі для злих, енергетично голодних типів з «сатанинськими можливостями». Якщо додаються три шістки (666), треба бути обережнішим!',
  22222 : '',
  //Квадрат 3. Організованість і здібності до наук
  31 : 'Дуже акуратні і пунктуальні люди, які виділяються серед навколишніх культурної промовою і вихованістю, відмінні господарі, але кілька нав\'язливі в своєму постійному прагненні до чистоти. Дуже пунктуальні, люблять дивитися у дзеркало',
  3 : 'У таких людей все залежить від настрою. Вони не люблять безлад, але прибирання проводять знову-таки в залежності від настрою(хочу - роблю. хочу — ні), не люблять економити',
  33 : 'Люди, схильні до наук. Мають аналітичний склад розуму, хороші здібності до точних наук(математики, фізики, хімії)',
  333 : 'Схильність до наук. Реалізація цієї схильності породжує педантичність, відчуженість, скнарість, нарешті, постійну потребу в справедливості.',
  3333 : 'З цих людей виходять хороші вчені. Відмінні риси — педантизм, акуратність',
  33333 : '',
  //Квадрат 4. Здоров'я
  41 : 'Здоров\'я дуже слабке, людина з дитинства схильна до різних захворювань. Хворіти така людина буде тим довше, чим більше в її математичному прогнозі двійок, тому що вона віддає в світ свою енергію.',
  4 : 'Здоров\'я середнє, його потрібно загартовувати, інакше до старості людина перетвориться на руїну. Головні види спорту - плавання і біг.',
  44 : ' Здоров\'я міцне. Такі люди не афішують свою сексуальну силу, але можуть бути символами сексуальної привабливості. володіють високою опірністю хворобам, живим темпераментом',
  444 : 'Люди з дуже міцним здоров\'ям, зустрічаються вкрай рідко. Сексуальний темперамент таких людей неймовірно привабливий.',
  4444 : '',
  44444 : '',
  //Квадрат 5. Інтуїція
  51 : 'Людина народилася з невідкритим коналом інтуїції, ктивний, намагається щось зробити. Завжди обдумує свої дії, але неминуче робить багато помилок. таким людям доводиться пробивати собі дорогу в життя тяжкою працею',
  5 : 'Канал інтуїції відкритий, кількість помилок таких людей скорочено, життєві ситуації знаходяться під контролем для вилучення з них максимальної користі.',
  55 : 'Сильно розвинена інтуїція. Наявність «віщих снів», передчуттів подій. Одкровення при наявності єдиної деталі. Уміння передбачати минуле так само, як і майбутнє. (можуть бути слідчими або юристами)',
  555 : 'Майже ясновидці. Без всяких знань і підказок такі люди знають, як діяти самому і своєму оточенню. В окремих випадках точно пророкують прийдешні події, але не можуть вказати, як уникнути неприємностей.',
  5555 : 'Ясновидці. Їм ясно і байдуже все, що відбувається навколо. Вони часто перебувають поза часом і простором, ніби включаючись в якусь іншу систему існування. Таким людям подластно час і простір, вони можуть проникати в інші виміри',
  55555 : '',
  //Квадрат 6. Заземленість
  61 : 'Людина прийшла у цей світ, щоб отримати професію. Для розвитку і просування по сходах життя цій людині необхідна фізична праця, якої вона не любить. Уява, фантазія, художній смак - головні двигуни її розвитку. Однак, незважаючи на відволікаючі потреби, здатна на серйозні вчинки.',
  6	: 'Заземлений чоловік, але здібний по духовним якостям на гуманні вчинки. Може запинатися творчими або точними науками, але для продовження його існування обов\'язкова фізична праця. Бувають досить часто прояви в художніх областях. Думає про навчання, але без фізичної роботи йому не обійтися',
  66	: 'Заземлений чоповік. Прагне до фізичної праці, яка заважає його розвитку. Розумова діяльність і заняття мистецтвом - єдине, що може підняти таких людей.',
  666	: 'тривожний знак, зловісний знак. Темпераментні люди, які прагнуть за рахунок своєї чарівності бути завжди в центрі суспільства. Людина ненадійна, часто міняє випадкових партнерів.',
  6666	: 'Людина, яка перебрала в колишніх втіленнях зловмисності, лінощів і намагається вигнати це через працю, прагне до занять розумовою діяльністю, удосконалюється. Ця людина у своїх попередніх земних перетвореннях багато і тяжко працювала',
  66666	: '',
  //Квадрат 7. Талант
  71	:	'Людина, народжена, щоб зрозуміти, що таке талант. Його життєвий досвід і вчинки допомагають знайти талант, а страждання і релігія підштовхують до його розуміння. Головне - вловити момент, коли талант буде посланий згори. Людина стане талановитим у своїх подальших перетвореннях. А в нинішньому житті його чекає важка доля.'	,
  7	:	'Такі люди живуть легко, але удача приходить до них в результаті творчої праці. Талант виражений не яскраво.'	,
  77	:	'Знак дуже талановитих людей. Обдаровані, з тонким художнім, музичним смаком і схильністю до живопису. Люди цього знаку наділені всім — і добрим, і поганим. Для них не існує закритих дверей, щасливі в азартних іграх	'	,
  777	:	'Особливий знак, такі люди ненадовго відвідують землю. Ці люди зіткнутися з серйозними труднощами. Чутливість губить їх самих через загостреного почуття справедливості.	'	,
  7777	:	'Знак ангела. Люди, постійно піклуються про оточуючих, але, як правило, не доживають до старості. Люди з такою комбінацією цифр повинні бути дуже обачними	'	,
  77777	:	'	'	,
  //Квадрат 8. Відповідальність
  81	:	'Люди, у яких повністю відсутнє почуття обов\'язку. Якщо, скажімо, вони беруть в борг, то не поспішають віддавати і пропускають всі терміни розрахунку.'	,
  8	:	'Ці люди наділені почуттям боргу і гранично сумлінні, з розвиненим почуттям відповідальності	'	,
  88	:	'дуже розвинене почуття відповідальності. Цей чоловік завжди готовий допомогти іншим людям	'	,
  888	:	'Знак боргу перед народом, який виховав його власника. Символ обраних людей, які очолюють народи. Люди, які домагаються видатних результатів.'	,
  8888	:	'Знак несе парапсихологічні здатності і безмірну сприйнятливість до точних наук. Дивовижний знак людей, що йдуть надприродними шляхами.'	,
  88888	:	'	'	,
  //Квадрат 9. Розум
  91	:	'В таких людей низький індекс здібності до анадізу на основі пам\'яті і звичайної розсудливості.	'	,
  9	:	'Самий таємничий знак. Щоб його збагнути, людина повинна працювати все життя та розвивати свій розум	'	,
  99	:	'Розумні від народження. Не люблять вчитися, тому що звикли легко отримувати знання. Головною перешкодою в цьому є почуття іронії. Незалежні(розумна голова, але дана ледарю)	'	,
  999	:	'Дуже розумні та успішні люди. Пізнання не представляє для них ніяких труднощів. Прекрасні співрозмовники.'	,
  9999	:	'Люди, яким відкривається істина, люди рідкісного розуму, Якщо при цьому у них розвинена інтуїція, то існує повна гарантія від провалу в будь-якому починанні. Ці люди досить неприємні, грубі, немилосердні і жорстокі. Їх важко, часом неможливо, зробити адекватними в суспільстві.'	,
  99999	:	'	'	,


};