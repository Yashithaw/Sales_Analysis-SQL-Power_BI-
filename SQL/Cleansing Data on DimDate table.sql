-- Data cleansing on Dimdate table

SELECT 
  [DateKey] , 
  [FullDateAlternateKey] as Date
  --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] as Day,
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --[DayNumberOfMonth]
  --,[DayNumberOfYear]
   
  [WeekNumberOfYear]as WeekNo, 
  [EnglishMonthName]as Month,
  LEFT ([EnglishMonthName],3) as MonthShort,
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  
  [MonthNumberOfYear]as MonthNo, 
  [CalendarQuarter]as Quarter, 
  [CalendarYear] as Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >= YEAR(GETDATE())-2; -- ensure that we always get data two years back from the currentdate
