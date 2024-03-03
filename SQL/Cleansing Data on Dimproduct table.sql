-- Cleansing data onDimProduct table

SELECT P.ProductKey as [ProductKey],
      --,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      P.EnglishProductName as [Product Name],
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
	  PS.EnglishProductSubcategoryName as [Sub category Name],
	  PC.EnglishProductCategoryName as [Category Name],
      P.Color as [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      P.Size as[Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      P.ProductLine as [Product line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      P.ModelName as [Model Name],
      --,[LargePhoto]
      P.EnglishDescription as [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      isnull(P.Status, 'OutDated') as [Product Status]
  FROM dbo.DimProduct P
  left join dbo.DimProductSubcategory PS on PS.ProductSubcategoryKey=P.ProductSubcategoryKey
  left join dbo.DimProductCategory PC on PC.ProductCategoryKey=PS.ProductCategoryKey
  order by P.Productkey asc;
