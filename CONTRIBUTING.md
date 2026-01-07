# Kuchangia Katika Hazina ya Testing

Asante kwa nia yako ya kuchangia katika mradi huu! Tunakaribishia michango kutoka kwa kila mtu na tunathamini juhudi zako za kusaidia kuboresha hazina hii.

## Yaliyomo

- [Kanuni za Tabia](#kanuni-za-tabia)
- [Kuanza](#kuanza)
- [Usanidi wa Maendeleo](#usanidi-wa-maendeleo)
- [Jinsi ya Kuchangia](#jinsi-ya-kuchangia)
- [Viwango vya Uandishi wa Msimbo](#viwango-vya-uandishi-wa-msimbo)
- [Miongozo ya Majaribio](#miongozo-ya-majaribio)
- [Miongozo ya Ujumbe wa Commit](#miongozo-ya-ujumbe-wa-commit)
- [Mchakato wa Pull Request](#mchakato-wa-pull-request)
- [Kuripoti Matatizo](#kuripoti-matatizo)
- [Maswali na Usaidizi](#maswali-na-usaidizi)

## Kanuni za Tabia

Kwa kushiriki katika mradi huu, unatarajiwa kushikilia ahadi yetu ya kutoa mazingira ya ukarimu na ujumuishaji kwa kila mtu. Tafadhali kuwa mwenye heshima, mwenye kuzingatia na kitaalamu katika mwingiliano wote.

## Kuanza

1. **Fanya fork ya hazina** kwenye akaunti yako ya GitHub
2. **Clone fork yako** kwa mtandao wa ndani:
   ```bash
   git clone https://github.com/YOUR-USERNAME/REPOSITORY-NAME.git
   cd REPOSITORY-NAME
   ```
3. **Unda tawi jipya** kwa ajili ya mabadiliko yako:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Usanidi wa Maendeleo

Huu ni mradi wa Ruby. Ili kusanidi mazingira yako ya maendeleo:

### Mahitaji ya Awali

- Ruby (toleo la 3.0 au juu linashauriwa)
- Git

### Usakinishaji

1. Sakinisha vitegemezi (ikiwa vipo):
   ```bash
   bundle install
   ```
   Ikiwa bado huna Gemfile, unaweza kuruka hatua hii.

2. Thibitisha usanidi wako kwa kuendesha majaribio:
   ```bash
   ruby alpaca_test.rb
   ```

## Jinsi ya Kuchangia

Tunakaribishia aina mbalimbali za michango:

- **Marekebisho ya hitilafu**: Tusaidie kurekebisha matatizo katika msimbo
- **Vipengele vipya**: Ongeza utendaji mpya ili kuboresha mradi
- **Nyaraka**: Boresha au ongeza nyaraka
- **Majaribio**: Ongeza au boresha upeo wa majaribio
- **Uboreshaji wa msimbo**: Boresha ubora wa msimbo na uwezo wa kudumishwa

### Kabla Hujaanza

- Angalia ukurasa wa Matatizo ili kuona ikiwa mtu anaendesha tayari kipengele au marekebisho ya hitilafu sawa
- Kwa mabadiliko makubwa, tafadhali fungua tatizo kwanza ili kujadili unachotaka kubadilisha
- Hakikisha mabadiliko yako yanalingana na malengo na upeo wa mradi

## Viwango vya Uandishi wa Msimbo

Tafadhali fuata viwango hivi vya uandishi wa msimbo ili kudumisha uthabiti:

### Mwongozo wa Mtindo wa Ruby

- Fuata [Mwongozo wa Mtindo wa Ruby](https://rubystyle.guide/)
- Tumia nafasi 2 kwa indentation (si tabs)
- Weka mistari kwa urefu unaofaa (herufi 80-120)
- Tumia majina ya vigeuzi na mbinu zinazofafanua
- Andika maoni wazi na mafupi inapohitajika

### Ubora wa Msimbo

- **Hakuna kauli za utatuzi**: Ondoa kauli zote za `puts` na wito wa `binding.pry` kabla ya kuwasilisha PR yako
  - Seti yetu ya majaribio inakagua hizi na itashindwa ikiwa zipo
- **Weka rahisi**: Andika msimbo safi na unaosomeka
- **Kanuni ya DRY**: Usirudie Mwenyewe - tumia tena msimbo inapofaa
- **Wajibu Mmoja**: Kila mbinu ifanye jambo moja vizuri

### Nyaraka

- Ongeza maoni kwa mantiki changamano
- Sasisha nyaraka ikiwa unabadilisha utendaji
- Jumuisha mifano inaposaidia

## Miongozo ya Majaribio

Mabadiliko yote ya msimbo yanapaswa kujumuisha majaribio yanayofaa:

### Kuendesha Majaribio

Endesha seti ya majaribio ili kuthibitisha mabadiliko yako:

```bash
ruby alpaca_test.rb
```

### Kuandika Majaribio

- Andika majaribio kwa vipengele vipya na marekebisho ya hitilafu
- Fuata muundo wa majaribio uliopokuwepo na itifaki za majina
- Hakikisha majaribio yote yanapita kabla ya kuwasilisha PR yako
- Jaribu visa vya makali na hali za hitilafu

### Mahitaji ya Majaribio

- Majaribio yanapaswa kuwa wazi na yanayoelezea
- Kila jaribio linapaswa kujaribu tabia moja maalum
- Tumia ujumbe wa uthibitisho wenye maana
- Safisha data yoyote ya majaribio au hali baada ya majaribio kuendesha

## Miongozo ya Ujumbe wa Commit

Andika ujumbe wa commit ulio wazi na wenye maana:

### Umbizo

```
<aina>: <muhtasari mfupi>

<maelezo ya kina ya hiari>
```

### Aina

- `feat`: Kipengele kipya
- `fix`: Marekebisho ya hitilafu
- `docs`: Mabadiliko ya nyaraka
- `style`: Mabadiliko ya mtindo wa msimbo (uumbizaji, n.k.)
- `refactor`: Uboreshaji wa msimbo
- `test`: Kuongeza au kusasisha majaribio
- `chore`: Kazi za matengenezo

### Mifano

```
feat: ongeza mbinu ya kuhesabu kiwango cha ukuaji wa sufi

fix: sahihisha uthibitishaji wa umri katika kijengaji cha Alpaca

docs: sasisha README na mifano ya matumizi

test: ongeza majaribio kwa mbinu ya feed
```

### Mbinu Bora

- Tumia hali ya kiamri ("ongeza kipengele" si "imeongezwa kipengele")
- Weka mstari wa kwanza chini ya herufi 50
- Herufi kubwa ya kwanza
- Hakuna kipindi mwishoni mwa muhtasari
- Toa muktadha wa ziada katika mwili inahitajika

## Mchakato wa Pull Request

1. **Sasisha tawi lako** na mabadiliko ya hivi karibuni kutoka kwa main:
   ```bash
   git fetch origin
   git rebase origin/main
   ```

2. **Endesha majaribio yote** ili kuhakikisha hakuna kilichovunjika:
   ```bash
   ruby alpaca_test.rb
   ```

3. **Thibitisha ubora wa msimbo**:
   - Ondoa kauli zozote za utatuzi (`puts`, `binding.pry`)
   - Angalia uumbizaji na mtindo sahihi
   - Hakikisha maoni yote ni wazi na muhimu

4. **Sukuma mabadiliko yako** kwenye fork yako:
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Unda Pull Request**:
   - Nenda kwenye hazina asili kwenye GitHub
   - Bofya "New Pull Request"
   - Chagua fork yako na tawi
   - Jaza kiolezo cha PR na:
     - Maelezo wazi ya mabadiliko
     - Kwa nini mabadiliko yanahitajika
     - Jinsi ya kujaribu mabadiliko
     - Matatizo yoyote yanayohusiana

6. **Jibu maoni**:
   - Shughulikia maoni ya mapitio haraka
   - Fanya mabadiliko yaliyoombwa katika commits mpya
   - Sasisha PR yako na muktadha wa ziada inahitajika

7. **Ngoja idhini**:
   - Angalau mapitio ya mdumisha mmoja yanahitajika
   - Ukaguzi wote wa CI lazima upite
   - Baada ya kuidhinishwa, mdumisha atachanganya PR yako

## Kuripoti Matatizo

Ikiwa unapata hitilafu au una pendekezo:

### Kabla ya Kuunda Tatizo

- Tafuta matatizo yaliyopo ili kuepuka nakala
- Kusanya taarifa husika kuhusu tatizo

### Kuunda Tatizo

Jumuisha taarifa zifuatazo:

- **Kichwa wazi**: Eleza kwa ufupi tatizo
- **Maelezo**: Maelezo ya kina ya tatizo au pendekezo
- **Hatua za kurudia** (kwa hitilafu):
  1. Ulichofanya
  2. Ulichotarajia kutokea
  3. Kilichotokea kwa kweli
- **Maelezo ya mazingira**:
  - Toleo la Ruby
  - Mfumo wa uendeshaji
  - Usanidi wowote husika
- **Sampuli za msimbo**: Jumuisha msimbo mdogo wa kurudia tatizo
- **Ujumbe wa hitilafu**: Jumuisha ujumbe kamili wa hitilafu na athari za stack

### Lebo za Tatizo

Tunatumia lebo kukategorisha matatizo:

- `bug`: Kitu hakifanyi kazi
- `enhancement`: Kipengele kipya au ombi
- `documentation`: Maboresho ya nyaraka
- `good first issue`: Nzuri kwa wajanja
- `help wanted`: Umakini wa ziada unahitajika

## Maswali na Usaidizi

Ikiwa una maswali au unahitaji msaada:

- **Angalia matatizo yaliyopo**: Swali lako linaweza kuwa limejibiwa tayari
- **Fungua tatizo jipya**: Tumia kifuatiliaji cha matatizo kwa maswali
- **Kuwa na subira**: Wadumishaji watajibu haraka iwezekanavyo
- **Kuwa mwenye heshima**: Kumbuka kwamba wadumishaji mara nyingi ni wajitoleaji

## Utambuzi

Wachangiaji wote watatambuliwa kwa michango yao. Asante kwa kufanya mradi huu kuwa bora zaidi!

---

**Kuchangia Furaha!** 🎉

Tunashukuru muda wako na juhudi katika kuchangia katika mradi huu. Kila mchango, haijalishi ni mdogo kiasi gani, unafanya tofauti!
