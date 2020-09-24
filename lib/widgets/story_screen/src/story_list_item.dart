import 'package:flutter/material.dart';
import 'package:umma_pay_test/design/theme.dart';
import 'package:umma_pay_test/widgets/custom/seporator.dart';

class StoryListItem extends StatelessWidget {
  const StoryListItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Seporator(),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Утренний азкар №1",
              style: DesignTheme.text.storyTitle,
            ),
          ),
        ),
        Seporator(),
        Image(
          image: AssetImage("assets/img/story/story.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            ''' 
        О Аллах, Ты - Господь мой, и нет достойного поклонения, кроме Тебя, Ты создал меня, а я -Твой раб, и я буду хранить верность Тебе, пока у меня хватит сил. Прибегаю к Тебе от зла того, что я сделал, признаю милость, оказанную Тобой мне, и признаю грех свой. Прости же меня, ибо, поистине, никто не прощает грехов, кроме Тебя! (Бухари)
\n \r
Аллахумма, Анта Рабби, ля иляха илля Анта, халякта-ни ва ана 'абду-кя, ва ана "аля 'ахди-кя ва ва'ди-кя ма-стата'ту. А'узу би-кя мин шарри ма сана'ту, абу'у ля-кя би-ни'мати-кя 'аляййя, ва абу'у би-занби, фа-гфир ли, фа-инна-ху ля йагфи-ру-з-зунуба илля Анта!
        ''',
          ),
        ),
      ],
    );
  }
}
