#
#
#	Author : Ajesh Sen Thapa
#	Website: www.ajesh.com.np
#
#

import time

class DateConverter:
	
	def __init__(self):

		self.englishMonths = [31, 28, 31, 30, 31, 30,31, 31, 30, 31, 30, 31]
		self.englishLeapMonths = [31, 29, 31, 30, 31, 30,31, 31, 30, 31, 30, 31]
		
		self.nepaliMonths = [
			[ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31 ],  #2000
			[ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],  #2001
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
			[ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30 ],  #2071
			[ 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],  #2072
			[ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31 ],  #2073
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
			[ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],  #2090
			[ 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30 ],
			[ 30, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
			[ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
			[ 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30 ],
			[ 31, 31, 32, 31, 31, 31, 30, 29, 30, 30, 30, 30 ],
			[ 30, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30 ],
			[ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30 ],
			[ 31, 31, 32, 31, 31, 31, 29, 30, 29, 30, 29, 31 ],
			[ 31, 31, 32, 31, 31, 31, 30, 29, 29, 30, 30, 30 ]   #2099
		]

	def setCurrentDate(self):
	  year = int(time.strftime("%Y"))
	  month = int(time.strftime("%m"))
	  date = int(time.strftime("%d"))
	  self.setEnglishDate(year, month, date)

	
	#English to Nepali date conversion

	def setEnglishDate(self,year, month, date):
		if(not self.__isEnglishRange(year,month,date)):
			raise Exception("Invalid date format.")

		self.englishYear = year
		self.englishMonth = month
		self.englishDate = date

		#Setting nepali reference to 2000/1/1 with english date 1943/4/14
		self.nepaliYear = 2000
		self.nepaliMonth = 1
		self.nepaliDate = 1

		difference = self.getEnglishDateDifference(1943, 4, 14)

		#Getting nepali year untill the difference remains less than 365
		index = 0
		while( difference >= self.__nepaliYearDays(index) ):
			self.nepaliYear+=1
			difference = difference - self.__nepaliYearDays(index)
			index+=1

		#Getting nepali month untill the difference remains less than 31
		i = 0
		while(difference >= self.nepaliMonths[index][i]):
			difference = difference - self.nepaliMonths[index][i]
			self.nepaliMonth+=1
			i+=1

		#Remaning days is the date
		self.nepaliDate = self.nepaliDate + difference
		
		self.getDay()
		

	def toEnglishString(self, format='-'):
		return str(self.englishYear)+format+str(self.englishMonth)+format+str(self.englishDate)
		

	def getEnglishDateDifference(self, year, month, date):
		
		#Getting difference from the current date with the date provided
		difference = self.__countTotalEnglishDays(self.englishYear, self.englishMonth, self.englishDate) - self.__countTotalEnglishDays(year, month, date)
		if difference < 0: 
		  return -difference
		else:
		  return difference
	


	def __countTotalEnglishDays(self, year, month, date):

		totalDays = year * 365 + date
				
		for i in range(0,month-1):
			totalDays = totalDays + self.englishMonths[i]
		
		totalDays = totalDays + self.__countleap(year, month)
		return totalDays


	def __countleap(self, year, month):
		if (month <= 2):
			year-=1
		
		return (year//4-year//100+year//400)
		

	def __isEnglishRange(self, year, month, date):
		
		if(year < 1944 or year > 2042):
			return False
		
		if(month < 1 or month > 12):
			return False
		
		if(date < 1 or date > 31):
			return False
		
		return True
	

	def __isLeapYear(self, year):

		if(year%4 == 0):
		  if(year%100 == 0):
		    return (year%400 == 0)
		  else:
		    return True                
		else:
		  return False



	#Nepali to English date conversion

	def setNepaliDate(self, year, month, date):

		if(not self.__isNepaliRange(year,month,date)):
			raise Exception("Invalid date format.")

		self.nepaliYear = year
		self.nepaliMonth = month
		self.nepaliDate = date
		
		#Setting english reference to 1944/1/1 with nepali date 2000/9/17
		self.englishYear = 1944
		self.englishMonth = 1
		self.englishDate = 1
		
		difference = self.getNepaliDateDifference(2000, 9, 17)
		
		#Getting english year untill the difference remains less than 365
		while( (difference >= 366 and self.__isLeapYear(self.englishYear)) or  (difference >= 365 and not(self.__isLeapYear(self.englishYear)) ) ):
		  if( self.__isLeapYear(self.englishYear) ):
		    difference -= 366
		  else:
		    difference -= 365
		  self.englishYear += 1
		
		#Getting english month untill the difference remains less than 31
		if(self.__isLeapYear(self.englishYear)):
		  monthDays = self.englishLeapMonths
		else: 
		  monthDays = self.englishMonths
		i = 0
		while( difference >= monthDays[i]):
			self.englishMonth+=1
			difference = difference - monthDays[i]
			i+=1
		
		#Remaning days is the date
		self.englishDate = self.englishDate + difference
		
		self.getDay()


	def toNepaliString(self, format="-"):
		return str(self.nepaliYear)+format+str(self.nepaliMonth)+format+str(self.nepaliDate)

	
	def getNepaliDateDifference(self, year, month, date):

		#Getting difference from the current date with the date provided
		difference = self.__countTotalNepaliDays(self.nepaliYear, self.nepaliMonth, self.nepaliDate) - self.__countTotalNepaliDays(year, month, date)
		if(difference < 0):
		  return -difference
		else:
		  return difference


	def __countTotalNepaliDays(self, year, month, date):

		total = 0
		if(year < 2000):
			return 0
		
		total = total + (date-1)
		
		yearIndex = year - 2000
		for i in range(0,month-1):
			total = total + self.nepaliMonths[yearIndex][i]
		
		for i in range(0,yearIndex):
			total = total + self.__nepaliYearDays(i)
		
		return total


	def __nepaliYearDays(self, index):
		total = 0
		
		for i in range(0,12):
			total += self.nepaliMonths[index][i]
		
		return total
		

	def __isNepaliRange(self, year, month, date):
		if(year < 2000 or year > 2098):
			return False
		
		if(month < 1 or month > 12):
			return False
		
		if(date < 1 or date > self.nepaliMonths[year-2000][month-1]):
			return False
		
		return True


	#Class Regular methods

	def getDay(self):

		#Reference date 1943/4/14 Wednesday 
		difference = self.getEnglishDateDifference(1943, 4, 14)
		self.weekDay = ((3 + (difference%7) ) % 7 ) + 1
		return self.weekDay
	

	def getEnglishYear(self):
	  return self.englishYear
	
	def getEnglishMonth(self):
	  return self.englishMonth
	
	def getEnglishDate(self):
	  return self.englishDate
	
	def getNepaliYear(self): 
	  return self.nepaliYear
	
	def getNepaliMonth(self):
	  return self.nepaliMonth
	
	def getNepaliDate(self):
	  return self.nepaliDate

	def __str__(self):
		return "English Date: "+self.toEnglishString()+"\nNepali Date: "+self.toNepaliString()+"\nDay: "+str(self.weekDay)
