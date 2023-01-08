<?php

/*

	Author : Ajesh Sen Thapa
	Website: www.ajesh.com.np

*/

class DateConverter{
	
	public function __construct(){

		$this->englishMonths = array(31, 28, 31, 30, 31, 30,31, 31, 30, 31, 30, 31);
		$this->englishLeapMonths = array(31, 29, 31, 30, 31, 30,31, 31, 30, 31, 30, 31);
		
		$this->nepaliMonths = array(
			array( 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ),  //2000
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),  //2001
			array( 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ),
			array( 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ),
			array( 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 30, 32, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ),
			array( 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 30, 32, 31, 32, 31, 31, 29, 30, 29, 30, 29, 31 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),
			array( 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),  //2071
			array( 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),  //2072
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ),  //2073
			array( 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ),
			array( 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30 ),
			array( 31, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30 ),
			array( 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ),
			array( 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30 ),
			array( 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30 ),
			array( 31, 32, 31, 32, 30, 31, 30, 30, 29, 30, 30, 30 ),
			array( 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30 ),
			array( 30, 31, 32, 32, 30, 31, 30, 30, 29, 30, 30, 30 ),
			array( 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ),
			array( 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ),  //2090
			array( 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30 ),
			array( 30, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30 ),
			array( 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ),
			array( 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 30, 30, 30, 30 ),
			array( 30, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ),
			array( 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ),
			array( 31, 31, 32, 31, 31, 31, 29, 30, 29, 30, 29, 31 ),
			array( 31, 31, 32, 31, 31, 31, 30, 29, 29, 30, 30, 30 )   //2099
		);

	}

	public function setCurrentDate(){
		$this->setEnglishDate(date("Y"), date("n"), date("j"));
	}

	
	//English to Nepali date conversion

	public function setEnglishDate($year, $month, $date){
		if(!$this->isEnglishRange($year,$month,$date))
			throw new Exception("Invalid date format.");

		$this->englishYear = $year;
		$this->englishMonth = $month;
		$this->englishDate = $date;

		//Setting nepali reference to 2000/1/1 with english date 1943/4/14
		$this->nepaliYear = 2000;
		$this->nepaliMonth = 1;
		$this->nepaliDate = 1;

		$difference = $this->getEnglishDateDifference(1943, 4, 14);

		//Getting nepali year untill the difference remains less than 365
		$index = 0;
		while( $difference >= $this->nepaliYearDays($index) ){
			$this->nepaliYear++;
			$difference = $difference - $this->nepaliYearDays($index);
			$index++;
		}

		//Getting nepali month untill the difference remains less than 31
		$i = 0;
		while($difference >= $this->nepaliMonths[$index][$i]){
			$difference = $difference - $this->nepaliMonths[$index][$i];
			$this->nepaliMonth++;
			$i++;
		}

		//Remaning days is the date;
		$this->nepaliDate = $this->nepaliDate + $difference;
		
		$this->getDay();
	}

	public function toEnglishString($format="-"){
		return $this->englishYear.$format.$this->englishMonth.$format.$this->englishDate;
	}

	public function getEnglishDateDifference($year, $month, $date){
		
		//Getting difference from the current date with the date provided
		$difference = $this->countTotalEnglishDays($this->englishYear, $this->englishMonth, $this->englishDate) - $this->countTotalEnglishDays($year, $month, $date);
		return ($difference < 0 ? -$difference : $difference );
	
	}

	private function countTotalEnglishDays($year, $month, $date){

		$totalDays = $year * 365 + $date;
				
		for($i=0; $i < $month-1; $i++)
			$totalDays = $totalDays + $this->englishMonths[$i];
		
		$totalDays = $totalDays + $this->countleap($year, $month);
		return $totalDays;

	}

	private function countleap($year, $month){
		if ($month <= 2)
			$year--;
		
		return (floor($year/4)-floor($year/100)+floor($year/400));
	}

	private function isEnglishRange($year, $month, $date){
		
		if($year < 1944 || $year > 2042)
			return false;
		
		if($month < 1 || $month > 12)
			return false;
		
		if($date < 1 || $date > 31)
			return false;
		
		return true;
	
	}

	private function isLeapYear($year){

		if($year%4 == 0){
            return ($year%100 == 0) ? ($year%400 == 0) : true;                
		}
        else
            return false;

	}


	//Nepali to English date conversion

	public function setNepaliDate($year, $month, $date){

		if(!$this->isNepaliRange($year,$month,$date))
			throw new Exception("Invalid date format.");

		$this->nepaliYear = $year;
		$this->nepaliMonth = $month;
		$this->nepaliDate = $date;
		
		//Setting english reference to 1944/1/1 with nepali date 2000/9/17
		$this->englishYear = 1944;
		$this->englishMonth = 1;
		$this->englishDate = 1;
		
		$difference = $this->getNepaliDateDifference(2000, 9, 17);
		
		//Getting english year untill the difference remains less than 365
		while( $difference >= ($this->isLeapYear($this->englishYear) ? 366 : 365)){
			$difference = $difference - ($this->isLeapYear($this->englishYear) ? 366 : 365);
			$this->englishYear++;
		}
		
		//Getting english month untill the difference remains less than 31
		$monthDays = $this->isLeapYear($this->englishYear) ? $this->englishLeapMonths : $this->englishMonths;
		$i = 0;
		while( $difference >= $monthDays[$i]){
			$this->englishMonth++;
			$difference = $difference - $monthDays[$i];
			$i++;
		}
		
		//Remaning days is the date;
		$this->englishDate = $this->englishDate + $difference;
		
		$this->getDay();

	}

	public function toNepaliString($format="-"){
		return $this->nepaliYear.$format.$this->nepaliMonth.$format.$this->nepaliDate;
	}

	public function getNepaliDateDifference($year, $month, $date){

		//Getting difference from the current date with the date provided
		$difference = $this->countTotalNepaliDays($this->nepaliYear, $this->nepaliMonth, $this->nepaliDate) - $this->countTotalNepaliDays($year, $month, $date);
		return ($difference < 0 ? -$difference : $difference );

	}

	private function countTotalNepaliDays($year, $month, $date){

		$total = 0;
		if($year < 2000)
			return 0;
		
		$total = $total + ($date-1);
		
		$yearIndex = $year - 2000;
		for($i=0; $i < $month-1; $i++)
			$total = $total + $this->nepaliMonths[$yearIndex][$i];
		
		for($i=0; $i < $yearIndex; $i++)
			$total = $total + $this->nepaliYearDays($i);
		
		return $total;

	}

	private function nepaliYearDays($index){
		$total = 0;
		
		for($i = 0 ; $i < 12; $i++)
			$total += $this->nepaliMonths[$index][$i];
		
		return $total;
	}

	private function isNepaliRange($year, $month, $date){
		if($year < 2000 || $year > 2098)
			return false;
		
		if($month < 1 || $month > 12)
			return false;
		
		if($date < 1 || $date > $this->nepaliMonths[$year-2000][$month-1])
			return false;
		
		return true;
	}


	//Class Regular methods

	public function getDay(){

		//Reference date 1943/4/14 Wednesday 
		$difference = $this->getEnglishDateDifference(1943, 4, 14);
		$this->weekDay = ((3 + ($difference%7) ) % 7 ) + 1;
		return $this->weekDay;
	
	}

	public function getEnglishYear(){ return $this->englishYear; }
	
	public function getEnglishMonth(){ return $this->englishMonth; }
	
	public function getEnglishDate(){ return $this->englishDate; }
	
	public function getNepaliYear(){ return $this->nepaliYear; }
	
	public function getNepaliMonth(){ return $this->nepaliMonth; }
	
	public function getNepaliDate(){ return $this->nepaliDate; }

	public function __toString()
	{
		return "English Date: ".$this->toEnglishString()."\n"."Nepali Date: ".$this->toNepaliString()."\nDay: ".$this->weekDay;
	}
}

?>