USE supermarket_sales;
SELECT * FROM supermarket_sales.supermarket as s;
TRUNCATE supermarket_sales.supermarket;

SELECT * FROM supermarket_sales.ret;
TRUNCATE supermarket_sales.ret;

SELECT 
	s.`Row ID`,
    s.`Order ID`,
	s.`Order Date`,
    s.`Ship Date`,
    s.`Ship Mode`,
    s.`Customer ID`,
    s.`Customer Name`,
    s.`Segment`,
    s.`City`,
    s.`State`,
    s.`Country`,
    s.`Market`,
    s.`Region`,
    s.`Product ID`,
    s.`Category`,
    s.`Sub-Category`,
   s.`Product Name`,
    ROUND(s.`Sales`,2) AS `Sales`,
    s.`Quantity`,
    s.`Discount` AS `Discount %`,
    ROUND(s.`Profit`,2) AS `Profit`,
    ROUND(s.`Shipping Cost`,2) AS `Shipping Cost`,
    s.`Order Priority`,
	r.`Returned`
FROM supermarket AS s
LEFT JOIN ret AS r
ON s.`Order ID` = r.`Order ID`;


    
