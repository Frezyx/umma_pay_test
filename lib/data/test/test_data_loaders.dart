import 'package:umma_pay_test/models/story.dart';

class TestData {
  static const String appBarTitle = "Азкары";

  static const String selectedCity = "Москва";

  static const List<String> timesList = [
    "07:12",
    "12:43",
    "15:29",
    "18:11",
    "19:53",
  ];

  static final Story testStory = Story(
    title: "Утренний азкар №1",
    description:
        ''' О Аллах, Ты - Господь мой, и нет достойного поклонения, кроме Тебя, Ты создал меня, а я -Твой раб, и я буду хранить верность Тебе, пока у меня хватит сил. Прибегаю к Тебе от зла того, что я сделал, признаю милость, оказанную Тобой мне, и признаю грех свой. Прости же меня, ибо, поистине, никто не прощает грехов, кроме Тебя! (Бухари)''',
    italicDescription:
        '''Аллахумма, Анта Рабби, ля иляха илля Анта, халякта-ни ва ана 'абду-кя, ва ана "аля 'ахди-кя ва ва'ди-кя ма-стата'ту. А'узу би-кя мин шарри ма сана'ту, абу'у ля-кя би-ни'мати-кя 'аляййя, ва абу'у би-занби, фа-гфир ли, фа-инна-ху ля йагфи-ру-з-зунуба илля Анта!''',
    photoPath: "assets/img/story/story.jpg",
  );

  static final Story testStory1 = Story(
    title: "Утром",
    photoPath: "assets/img/stories_list/mountain.jpg",
  );

  static final Story testStory2 = Story(
    title: "Вечером",
    photoPath: "assets/img/stories_list/mountain1.jpg",
  );
  static final Story testStory3 = Story(
    title: "После молитвы",
    photoPath: "assets/img/stories_list/temple.jpg",
  );
  static final Story testStory4 = Story(
    title: "Важные дуа. Часть 1",
    photoPath: "assets/img/stories_list/thoughts.jpg",
  );

  static List<Story> getStoryList() {
    return [testStory, testStory, testStory, testStory, testStory];
  }

  static List<Story> getStoiesList() {
    return [testStory1, testStory2, testStory3, testStory4];
  }
}
