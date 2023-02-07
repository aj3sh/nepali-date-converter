# Nepali Date Converter

A source code for nepali date converter in most of popular programming languages including Python, GO, Java, PHP, C#, JS, Dart, and more on.

## Note

The method names are similar for all programming languages. As this source code was created on Nov 17, 2017, it is not refactored well but works fine. The refactoring we will be done asap. We will also add the source code for new programming languages and update the docs for the codes.

## Python

```python
from date_converter import converter

y, m, d = converter.english_to_nepali(2023, 1, 15)
print(y, m, d) # 2079 10 1

y, m, d = converter.nepali_to_english(2079, 10, 1)
print(y, m, d) # 2023 1 15
```

## Golang (GO)
```golang
npDates, _ := dateConverter.EnglishToNepali(2023, 1, 15)
fmt.Println(npDates[0], npDates[1], npDates[2]) // 2079 10 1

enDates, _ := dateConverter.NepaliToEnglish(2079, 10, 1)
fmt.Println(enDates[0], enDates[1], enDates[2]) // 2023 1 15
```

## Java

```java
try {

    DateConverter converter = new DateConverter();

    converter.setNepaliDate(2074, 7, 26);
    System.out.println(converter.getEnglishYear()+"/"+converter.getEnglishMonth()+"/"+converter.getEnglishDate());
    System.out.println(converter+"\n");

    converter.setCurrentDate();
    System.out.println(converter.getNepaliYear()+"/"+converter.getNepaliMonth()+"/"+converter.getNepaliDate());
    System.out.println("Weekly day: "+converter.getDay());
    System.out.println(converter.toNepaliString());

} catch (Exception e) {
    //Invalid date format
    System.out.println(e.toString());
}
```

## PHP

```php
include("DateConverter.php");

$converter = new DateConverter();

$converter->setNepaliDate(2074,7,26);
echo $converter->getEnglishYear()."/".$converter->getEnglishMonth()."/".$converter->getEnglishDate();
echo $converter;

$converter->setCurrentDate();
echo $converter->getNepaliYear()."/".$converter->getNepaliMonth()."/".$converter->getNepaliDate();
echo "Weekly day: ".$converter->getDay();
echo $converter->toNepaliString();
```

## JavaScript

```js
<script src="dateconverter.js"></script>
<script>
    try{

        var converter = new DateConverter();
        converter.setNepaliDate(2074, 7, 26)
        alert(converter.getEnglishYear()+"/"+converter.getEnglishMonth()+"/"+converter.getEnglishDate())

        converter.setCurrentDate()
        alert(converter.getNepaliYear()+"/"+converter.getNepaliMonth()+"/"+converter.getNepaliDate())
        alert( "Weekly day: "+ converter.getDay() )
        alert( converter.toNepaliString() )

    }catch(err)
    {
        alert(err.message);
    }
</script>
```

## C#

```c#
try {

    DateConverter converter = new DateConverter();

    converter.setNepaliDate(2074, 7, 26);
    Console.WriteLine(converter.getEnglishYear()+"/"+converter.getEnglishMonth()+"/"+converter.getEnglishDate());
    Console.WriteLine("");

    converter.setCurrentDate();
    Console.WriteLine(converter.getNepaliYear()+"/"+converter.getNepaliMonth()+"/"+converter.getNepaliDate());
    Console.WriteLine("Weekly day: "+converter.getDay());
    Console.WriteLine(converter.toNepalistring());

} catch (Exception e) {
    //Invalid date format
    Console.WriteLine("Exception information: {0}", e);
}
```
