# אלפקה (Alpaca)

## תיאור הפרוייקט

זהו פרוייקט רובי פשוט המדגים מחלקה המייצגת אלפקה.

## מחלקת Alpaca

המחלקה `Alpaca` מייצגת אלפקה עם המאפיינים הבאים:

### מאפיינים
- **name** (שם) - שם האלפקה
- **age** (גיל) - גיל האלפקה
- **color** (צבע) - צבע האלפקה
- **wool_length** (אורך צמר) - אורך הצמר בסנטימטרים

### מתודות

#### `initialize(name, age, color, wool_length)`
יוצר אלפקה חדשה עם המאפיינים שניתנו.

#### `feed(food)`
מאכיל את האלפקה. מחזיר מחרוזת המתארת את האלפקה אוכלת את המזון שניתן.

**דוגמה:**
```ruby
alpaca = Alpaca.new("פלופי", 5, "חום", 10)
alpaca.feed("דשא")
# => "Alpaca פלופי is eating דשא."
```

#### `make_sound`
מייצר את הצליל שהאלפקה משמיעה.

**דוגמה:**
```ruby
alpaca.make_sound
# => "Alpaca פלופי says 'Mmmm!'"
```

#### `display_info`
מציג את כל המידע על האלפקה.

**דוגמה:**
```ruby
alpaca.display_info
# => "Name: פלופי, Age: 5, Color: חום, Wool Length: 10 cm"
```

## שימוש

```ruby
require_relative 'alpaca'

# יצירת אלפקה חדשה
my_alpaca = Alpaca.new("פלופי", 5, "חום", 10)

# הצגת מידע
puts my_alpaca.display_info

# האכלת האלפקה
puts my_alpaca.feed("דשא")

# האזנה לצליל שהאלפקה משמיעה
puts my_alpaca.make_sound
```

## בדיקות

להרצת הבדיקות:
```bash
ruby alpaca_test.rb
```

## רישיון

פרוייקט זה הוא לצרכי הדגמה.
