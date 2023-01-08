# Nepali Date Converter

A source code for nepali date converter in most of popular programming languages including Java, PHP, C#, JS, Dart, Python, and more on.

## Note

The method names are similar for all programming languages. As this source code was created on Nov 17, 2017, it is not refactored well but works fine. The refactoring we will be done asap. We will also add the source code for new programming languages and update the docs for the codes.

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

## Python

```python
from DateConverter import DateConverter

converter = DateConverter()
converter.setNepaliDate(2074, 7, 26)
print(str(converter.getEnglishYear())+"/"+str(converter.getEnglishMonth())+"/"+str(converter.getEnglishDate()))
print(converter)
print()

converter.setCurrentDate()
print(str(converter.getNepaliYear())+"/"+str(converter.getNepaliMonth())+"/"+str(converter.getNepaliDate()))
print( "Weekly day: "+ str(converter.getDay()) )
print( converter.toNepaliString() )
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
