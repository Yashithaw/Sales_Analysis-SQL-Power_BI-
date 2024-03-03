-- Cleansing Data on Dim Customer

SELECT C.CustomerKey as CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      C.FirstName as [First Name],
      --,[MiddleName]
      C.LastName as[Last Name],
	  C.Firstname+' '+C.Lastname as [Full Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      case C.Gender when 'M' then 'Male' when 'F' then 'Female' end as Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      C.DateFirstPurchase as[First Purchase Date],
      --,[CommuteDistance]
	  G.City as [City]
  FROM dbo.DimCustomer C
  left join dbo.DimGeography G 
  on G.GeographyKey=C.GeographyKey
  order by CustomerKey asc;
