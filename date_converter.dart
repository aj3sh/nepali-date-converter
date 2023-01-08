/*

	Author : Ajesh Sen Thapa
	Website: www.ajesh.com.np

*/

class DateConverter {
	int nepaliYear, nepaliMonth, nepaliDate;
	int englishYear, englishMonth, englishDate;
	int weekDay;
	
	var englishMonths, englishLeapMonths;
	
	var nepaliMonths;
	
	DateConverter(){
		
		//English no of days in months
		englishMonths = [31, 28, 31, 30, 31, 30,31, 31, 30, 31, 30, 31];
		englishLeapMonths = [31, 29, 31, 30, 31, 30,31, 31, 30, 31, 30, 31];
		
		//Nepali no of days in months
		nepaliMonths = [
			[ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ], //2000
			[ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],	//2001
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
			[ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],	//2090
			[ 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30 ],
			[ 30, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
			[ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
			[ 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30 ],
			[ 31, 31, 32, 31, 31, 31, 30, 29, 30, 30, 30, 30 ],
			[ 30, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
			[ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
			[ 31, 31, 32, 31, 31, 31, 29, 30, 29, 30, 29, 31 ],
			[ 31, 31, 32, 31, 31, 31, 30, 29, 29, 30, 30, 30 ]  //2099
		];
	}
	
	void setCurrentDate(){
		//Setting current english Date
		var dNow = new DateTime.now();
		
		int y = dNow.year;
		int m = dNow.month;
		int d = dNow.day;
		
		setEnglishDate(y, m, d);
	}

	//English to Nepali date conversion
	void setEnglishDate(int year, int month, int date){
		if(!this.isEnglishRange(year,month,date))
		throw new Exception("Invalid date format.");
		
		this.englishYear = year;
		this.englishMonth = month;
		this.englishDate = date;
		
		//Setting nepali reference to 2000/1/1 with english date 1943/4/14
		this.nepaliYear = 2000;
		this.nepaliMonth = 1;
		this.nepaliDate = 1;
		
		int difference = this.getEnglishDateDifference(1943, 4, 14);
		
		//Getting nepali year untill the difference remains less than 365
		int index = 0;
		while( difference >= this.nepaliYearDays(index) ){
			this.nepaliYear++;
			difference = difference - this.nepaliYearDays(index);
			index++;
		}

		//Getting nepali month untill the difference remains less than 31
		int i = 0;
		while(difference >= this.nepaliMonths[index][i]){
			difference = difference - this.nepaliMonths[index][i];
			this.nepaliMonth++;
			i++;
		}

		//Remaning days is the date;
		this.nepaliDate = this.nepaliDate + difference;
		
		this.getDay();

	}

	String toEnglishString([String format="-"]){
		return this.englishYear.toString()+format+this.englishMonth.toString()+format+this.englishDate.toString();
	}

	int getEnglishDateDifference(int year, int month, int date){
		
		//Getting difference from the current date with the date provided
		int difference = countTotalEnglishDays(this.englishYear, this.englishMonth, this.englishDate) - countTotalEnglishDays(year, month, date);
		return (difference < 0 ? -difference : difference );
		
	}

	int countTotalEnglishDays(int year, int month, int date){
		
		int totalDays = year * 365 + date;
		
		for(int i=0; i < month-1; i++)
			totalDays = totalDays + this.englishMonths[i];
		
		totalDays = totalDays +countleap(year, month);
		return totalDays;
	}

	int countleap(int year, int month)
	{
		if (month <= 2)
			year--;
		
		return ((year/4).floor()-(year/100).floor()+(year/400).floor()).toInt();
	}
	
	bool isEnglishRange(int year, int month, int date){
		
		if(year < 1944 || year > 2042)
			return false;
		
		if(month < 1 || month > 12)
			return false;
		
		if(date < 1 || date > 31)
			return false;
		
		return true;
		
	}
	
	bool isLeapYear(int year){
		if(year%4 == 0){
			return (year%100 == 0) ? (year%400 == 0) : true;
		}
		else
			return false;
	}


	//Nepali to English date conversion
	void setNepaliDate(int year, int month, int date){
		if(!this.isNepaliRange(year,month,date))
		throw new Exception("Invalid date format.");
		
		this.nepaliYear = year;
		this.nepaliMonth = month;
		this.nepaliDate = date;
		
		//Setting english reference to 1944/1/1 with nepali date 2000/9/17
		this.englishYear = 1944;
		this.englishMonth = 1;
		this.englishDate = 1;
		
		int difference = this.getNepaliDateDifference(2000, 9, 17);
		
		//Getting english year untill the difference remains less than 365
		while( difference >= (isLeapYear(this.englishYear) ? 366 : 365)){
			difference = difference - (isLeapYear(this.englishYear) ? 366 : 365);
			this.englishYear++;
		}
		
		//Getting english month untill the difference remains less than 31
		var monthDays = isLeapYear(this.englishYear) ? this.englishLeapMonths : this.englishMonths;
		int i = 0;
		while( difference >= monthDays[i]){
			this.englishMonth++;
			difference = difference - monthDays[i];
			i++;
		}
		
		//Remaning days is the date;
		this.englishDate = this.englishDate + difference;
		
		this.getDay();
	
	}

	String toNepaliString([String format="-"]){
		return this.nepaliYear.toString()+format+this.nepaliMonth.toString()+format+this.nepaliDate.toString();
	}

	int getNepaliDateDifference(int year, int month, int date){
		
		//Getting difference from the current date with the date provided
		int difference = countTotalNepaliDays(this.nepaliYear, this.nepaliMonth, this.nepaliDate) - countTotalNepaliDays(year, month, date);
		return (difference < 0 ? -difference : difference );
		
	}

	int getActualNepaliDateDifference(int year, int month, int date){
		
		//Getting difference from the current date with the date provided
		int difference = countTotalNepaliDays(this.nepaliYear, this.nepaliMonth, this.nepaliDate) - countTotalNepaliDays(year, month, date);
		return -difference;
		
	}
	
	int countTotalNepaliDays(int year, int month, int date){
		int total = 0;
		if(year < 2000)
			return 0;
		
		total = total + (date-1);
		
		int yearIndex = year - 2000;
		for(int i=0; i < month-1; i++)
			total = total + this.nepaliMonths[yearIndex][i];
		
		for(int i=0;i < yearIndex; i++)
			total = total + this.nepaliYearDays(i);
		
		return total;
	}

	int nepaliYearDays(int index)
	{
		int total = 0;
		
		for(int i = 0 ; i < 12; i++)
			total += this.nepaliMonths[index][i];
		
		return total;
	}
	
	bool isNepaliRange(int year, int month, int date){
		if(year < 2000 || year > 2098)
			return false;
		
		if(month < 1 || month > 12)
			return false;
		
		if(date < 1 || date > this.nepaliMonths[year-2000][month-1])
			return false;
		
		return true;
	}



	//Class Regular methods

	int getDay(){
		
		//Reference date 1943/4/14 Wednesday
		int difference = this.getEnglishDateDifference(1943, 4, 14);
		this.weekDay = ((3 + (difference%7) ) % 7 ) + 1;
		return this.weekDay;
	}
	
	int getEnglishYear(){ return this.englishYear; }
	
	int getEnglishMonth(){ return this.englishMonth; }
	
	int getEnglishDate(){ return this.englishDate; }
	
	int getNepaliYear(){ return this.nepaliYear; }
	
	int getNepaliMonth(){ return this.nepaliMonth; }
	
	int getNepaliDate(){ return this.nepaliDate; }
	
	@override
	String toString()
	{
		return "English Date: "+this.toEnglishString()+"\n"+"Nepali Date: "+this.toNepaliString()+"\nDay: "+this.weekDay.toString();
	}

}
