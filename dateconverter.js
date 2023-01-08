/*

	Author : Ajesh Sen Thapa
	Website: www.ajesh.com.np

*/

function DateConverter(){
	this.englishMonths = [31, 28, 31, 30, 31, 30,31, 31, 30, 31, 30, 31];
    this.englishLeapMonths = [31, 29, 31, 30, 31, 30,31, 31, 30, 31, 30, 31];

    this.nepaliMonths = [
        [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],  //2000
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],  //2001
        [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],
        [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],
        [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 30, 32, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],
        [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 30, 32, 31, 32, 31, 31, 29, 30, 29, 30, 29, 31 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],
        [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],  //2071
        [ 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],  //2072
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],  //2073
        [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],
        [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30 ],
        [ 31, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
        [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
        [ 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30 ],
        [ 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30 ],
        [ 31, 32, 31, 32, 30, 31, 30, 30, 29, 30, 30, 30 ],
        [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30 ],
        [ 30, 31, 32, 32, 30, 31, 30, 30, 29, 30, 30, 30 ],
        [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
        [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],  //2090
        [ 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30 ],
        [ 30, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
        [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
        [ 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 30, 30, 30 ],
        [ 30, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
        [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
        [ 31, 31, 32, 31, 31, 31, 29, 30, 29, 30, 29, 31 ],
        [ 31, 31, 32, 31, 31, 31, 30, 29, 29, 30, 30, 30 ]   //2099
        ];

    this.setCurrentDate = function(){
        var d = new Date();
        this.setEnglishDate(d.getFullYear(), d.getMonth()+1, d.getDate());
    };


    //English to Nepali date conversion

    this.setEnglishDate = function(year, month, date){
        if(!this.isEnglishRange(year,month,date))
                throw new Exception("Invalid date format.");

        this.englishYear = year;
        this.englishMonth = month;
        this.englishDate = date;

        //Setting nepali reference to 2000/1/1 with english date 1943/4/14
        this.nepaliYear = 2000;
        this.nepaliMonth = 1;
        this.nepaliDate = 1;

        var difference = this.getEnglishDateDifference(1943, 4, 14);

        //Getting nepali year untill the difference remains less than 365
        var index = 0;
        while( difference >= this.nepaliYearDays(index) ){
            this.nepaliYear++;
            difference = difference - this.nepaliYearDays(index);
            index++;
        }

        //Getting nepali month untill the difference remains less than 31
        var i = 0;
        while(difference >= this.nepaliMonths[index][i]){
            difference = difference - this.nepaliMonths[index][i];
            this.nepaliMonth++;
            i++;
        }

        //Remaning days is the date;
        this.nepaliDate = this.nepaliDate + difference;

        this.getDay();

    };

    this.toEnglishString = function(format){
        if (typeof(format)==='undefined')
            format="-";
        return this.englishYear+format+this.englishMonth+format+this.englishDate;
    };

    this.getEnglishDateDifference = function(year, month, date){

        //Getting difference from the current date with the date provided
        var difference = this.countTotalEnglishDays(this.englishYear, this.englishMonth, this.englishDate) - this.countTotalEnglishDays(year, month, date);
        return (difference < 0 ? -difference : difference );

    };
	
    this.countTotalEnglishDays = function(year, month, date){
        var totalDays = year * 365 + date;

        for(var i=0; i < month-1; i++)
            totalDays = totalDays + this.englishMonths[i];

        totalDays = totalDays +this.countleap(year, month);
        return totalDays;
    };
			
    this.countleap = function(year, month)
    {
        if (month <= 2)
            year--;

        return (Math.floor(year/4)-Math.floor(year/100)+Math.floor(year/400));
    };

    this.isEnglishRange = function(year, month, date)
    {
        if(year < 1944 || year > 2042)
            return false;

        if(month < 1 || month > 12)
            return false;

        if(date < 1 || date > 31)
            return false;

        return true;
    };
    
    this.isLeapYear = function(year){
        if(year%4 === 0){
        return (year%100 === 0) ? (year%400 === 0) : true;                
        }
        else
        return false;
    };
    
    
    //Nepali to English conversion
    
    this.setNepaliDate = function(year, month, date){
        if(!this.isNepaliRange(year,month,date))
            throw new Exception("Invalid date format.");

        this.nepaliYear = year;
        this.nepaliMonth = month;
        this.nepaliDate = date;

        //Setting english reference to 1944/1/1 with nepali date 2000/9/17
        this.englishYear = 1944;
        this.englishMonth = 1;
        this.englishDate = 1;

        var difference = this.getNepaliDateDifference(2000, 9, 17);

        //Getting english year untill the difference remains less than 365
        while( difference >= (this.isLeapYear(this.englishYear) ? 366 : 365)){
            difference = difference - (this.isLeapYear(this.englishYear) ? 366 : 365);
            this.englishYear++;
        }

        //Getting english month untill the difference remains less than 31
        var monthDays = this.isLeapYear(this.englishYear) ? this.englishLeapMonths : this.englishMonths;
        var i = 0;
        while( difference >= monthDays[i]){
            this.englishMonth++;
            difference = difference - monthDays[i];
            i++;
        }

        //Remaning days is the date;
        this.englishDate = this.englishDate + difference;

        this.getDay();

    };

    this.toNepaliString = function(format){
        if (typeof(format)==='undefined')
            format="-";
        return this.nepaliYear+format+this.nepaliMonth+format+this.nepaliDate;
    };

    this.getNepaliDateDifference = function(year, month, date){

        //Getting difference from the current date with the date provided
        var difference = this.countTotalNepaliDays(this.nepaliYear, this.nepaliMonth, this.nepaliDate) - this.countTotalNepaliDays(year, month, date);
        return (difference < 0 ? -difference : difference );

    };

    this.countTotalNepaliDays = function(year, month, date){
        var total = 0;
        if(year < 2000)
                return 0;

        total = total + (date-1);

        var yearIndex = year - 2000;
        for(var i=0; i < month-1; i++)
            total = total + this.nepaliMonths[yearIndex][i];

        for(var i=0;i < yearIndex; i++)
            total = total + this.nepaliYearDays(i);

        return total;
    };
    
    this.nepaliYearDays = function(index)
    {
        var total = 0;

        for(var i = 0 ; i < 12; i++)
            total += this.nepaliMonths[index][i];

        return total;
    };

    this.isNepaliRange = function(year, month, date){
        if(year < 2000 || year > 2098)
            return false;

        if(month < 1 || month > 12)
            return false;

        if(date < 1 || date > this.nepaliMonths[year-2000][month-1])
            return false;

        return true;
    };

    
    //Class Regular methods
	
    this.getDay = function(){

        //Reference date 1943/4/14 Wednesday 
        var difference = this.getEnglishDateDifference(1943, 4, 14);
        this.weekDay = ((3 + (difference%7) ) % 7 ) + 1;
        return this.weekDay;
        
    };

	this.getEnglishYear = function(){ return this.englishYear; };
	
	this.getEnglishMonth = function(){ return this.englishMonth; };
	
	this.getEnglishDate = function(){ return this.englishDate; };
	
	this.getNepaliYear = function(){ return this.nepaliYear; };
	
	this.getNepaliMonth = function(){ return this.nepaliMonth; };
	
	this.getNepaliDate = function(){ return this.nepaliDate; };
}