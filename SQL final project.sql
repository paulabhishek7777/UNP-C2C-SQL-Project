show databases;
create database example3;

use example3;

create table Product_Details(
ProductId int, 
ProductName varchar(200),
ProductDescription varchar(400),
ProductPrice int, 
QuantityAvailable int,
primary key (ProductId)
 );
 
 describe Product_Details;
 
 insert into Product_Details values 
 (123,"Samsung QLED TV","55 - inches,Dolby Audio, Android Features", 86000,100),
 (343,"SONY PlayStation 5 console","Games Included:Astro's Playroom ,Bluetooth Available",50000,200),
 (423,"Lenovo IdeaPad Gaming 3", "Ryzen 7, 8 GB Ram, 512 GB SSD, Windows 11 Home,4 GB Graphics,NVIDIA GeForce RTX 3050", 74000, 90),
 (532,"REDMI 9 Activ", "Metallic Purple,4 GB RAM, 64 GB Storage,Expandable Upto 512 GB,5000 mAh Lithium Polymer Battery",9000,400),
 (342,"Canon EOS 3000D DSLR Camera", "Self-Timer,Type C and Mini HDMI,9 Auto Focus Points,35x Optical Zoom,Effective Pixels: 18 MP", 30000,340),
 (543,"Boldfit Basketball","Size 7 Professional Basket Ball for Indoor-Outdoor Training",800,320),
 (685,"sunglasses", " Full Rim Hexagonal Branded Latest and Stylish Sunglasses | Polarized and 100% UV Protected",1100,770),
 (634,"Samsonite Hi-Fi Polypropylene Spinner","Shock absorbing suspension wheels to reduce surface impact & noise,Product Dimensions ‏ : ‎ 46 x 26 x 68 cm; 3 Kilograms",12220,500),
 (493,"Nike Mens_Sport Performance_Backpack","Product Dimensions ‏ : ‎ 48 x 36 x 15 cm; 300 Grams",4000,370),
 (909,"MI Power Bank Hypersonic", "20000mAh 50W Lithium Polymer Supports Laptop Charging 50W Mobile Charging",3600,100),
 (847,"Prestige Royale3 Burner Gas Stove","Manual Ignition,Material	: ‎Glass",7000,75),
 (934,"Atomic Habits: The life-changing million copy bestseller","A supremely practical and useful book. James Clear distils the most fundamental information about habit formation",500,300),
 (112,"Fastrack Casual Analog White Dial Men's Watch","Watch Movement Type: Quartz, Watch Display Type: Analog",1200,150),
 (534,"boAt Xtend Smartwatch","Alexa Built-in, 1.69” HD Display, Multiple Watch Faces, Stress Monitor, Heart & SpO2 Monitoring",2500,175),
 (324,"Kadence Slowhand Premium Jumbo Semi Acoustic Guitar"," a finely crafted guitar to give complete tonal control. Designed in premium tonal woods.",11500,350),
 (494,"JBL Wireless Earbuds","Active Noise Cancellation (Upto 40dB),40Hrs Playtime Legendary Sound 4Mics for Clear Calls",4500,270); 

 
create table Customer_details(
CustomerId int, 
CustomerName varchar(30), 
CustomerContactNumber varchar(10), 
CustomerEMailid varchar(100), 
CustomerAddress varchar(300),
Customer_City varchar(30),
Customer_State varchar(30), 
primary key (CustomerId)
);	

describe Customer_details ;

insert into Customer_details values
(354,"Mike", "9093029301", "mike2334@gmail.com", " # 7-8-6 Jolly residence, street no.12, hitech city", "Hyderabad","Telangana"),
(856,"Ali",  "9349850285", "ali1ahmadullah574@gmail.com", " #3-8-3 Mohammad residence, Street No.2, Old city", "Hyderabad","Telangana"),
(953,"Raghav", "9847501278", "raghav293@gmail.com", "# 5-3-9 Flat No. 304 Jai Apartments, Street No.4, Secunderabad", "Hyderabad","Telangana"),
(387,"Ashok", "9430529302", "ashok4847@gmail.com", "# 4-6-8 Vakeel Residence, Street No. 8, Gandhi Nagar", "Mumbai","Maharashtra"),
(764,"Dan", "9095429125", "danodan0284@gmail.com", "# 4-0-4 Sand Rsidence, Street No.7, Mechstreet", "Delhi", "Delhi"),
(214,"Raj", "8927368373", "raj5843@gmail.com", " # 9-6-2 Residing Rsidence, Street No.4, Golconda x roads", "Hyderabad","Telangana"), 
(584,"Gohan", "8742641001","gohan475@gmail.com", " # 5-7-3 F.No : 800 Giraffe scrapers, Street No.6, Giraffe street", "Banglore", "karnataka"),
(684, "Yami", "9466374620","yamisus964@gmail.com", " # 8-3-7 F.No : 507 Cycle chain apartments Street No: 4, Massiv road", "Chennai","Tamil Nadu"), 
(784, "Prabhas", "8529637411", " Prabhas342@gmail.com", "4th Floor, D C Chamber, Opp Ksb Pumps, Pimpri", "Pune","Maharashtra"),
(458, "Ram", "9403485345", "ram343@gmail.com",  "272, 63-a, Y M Road, A.r.street Corner, Mandvi", "Mumbai","Maharashtra"),
(498 , "John", "9504637295", "johnny34@gmail.com", "Street No:1, Gscb Complex, Opp Radhava Gas Agency, Ellora Park","Vadodara","Gujarat"),
(904, "Larry",  "9304723475", "larry562@gmail.com", "street No :7, Shanti Kunj,daxini Soci, Opp Goodluck Hall, Maninagar", "Ahmedabad","Gujarat"),
(876, "Genos", "9746384783", "genos234@gmail.com", "# 1-1-9, Udyog Vihar, Gurgaon", "Delhi","Delhi"),
(126, "Fatima", "9742303458", "fatima909@gmail.com", "#4-3-3 Crossing, Nazirabad, Kaiserbagh", "Lucknow", "Uttar Pradesh"),
(664, "Isha",   "9365783282", "isha485@gmail.com","V-19, New Market Yashwant Plac, Chanakyapuri", "Delhi","Delhi"),
(889, "Sam",    "8959538659", "sammy3746@gmail.com", "W-82/4, Mayapuri Indl Area", "Delhi","Delhi");

show tables;

create table Order_details (
OrderId int, 
ProductId int, 
QuantityOrdered int, 
CustomerId int,
purch_amt int,
primary key (OrderId)
);


insert into Order_details values
(024, 123, 1,  354, 86000),
(090, 112, 2,  354, 2400),
(094, 343, 7,  856, 350000),
(089, 685, 10, 856, 11000),
(023, 112, 3,  856, 3600),
(067, 423, 10, 953, 740000),
(050, 634, 4,  953, 2000),
(045, 532, 12, 387, 108000),
(065, 342, 19, 764, 570000),
(077, 847, 2, 764, 14000),
(078, 934, 5, 764, 2500),
(037, 543, 2, 214, 1600),
(039, 494, 3, 214, 13500),
(038, 909, 5, 214, 18000),
(076, 685, 6, 584, 6600),
(011, 493, 7, 584, 28000),
(095, 634, 8,684, 97760),
(069, 493, 3,784, 12000),
(099, 534, 1,784, 2500),
(036, 909, 12,458, 43200),
(021, 847, 5,498, 35000),
(022, 423, 1,498, 74000),
(033, 543, 10,498, 8000),
(068, 934, 9, 904, 4500),
(046, 112, 4,876, 3600),
(073, 534, 9,126, 22500),
(012, 532, 5,126, 45000),
(051, 324, 7,664, 80500),
(061, 342, 2,664, 60000),
(096, 494, 6,889, 27000);	

show tables; 
describe Order_details;

select *from Product_Details order by ProductPrice;

select *from Customer_details order by CustomerName;

select *from Product_Details where ProductPrice > 50000;

select *from Product_Details where ProductPrice = 9000;

select *from Product_Details where QuantityAvailable > 20;

select *from Customer_Details where Customer_city = "Hyderabad";

select *from Customer_Details where Customer_state = "Maharashtra";

select *from Product_Details where ProductPrice < 20000 and QuantityAvailable < 30; 

select *from Product_Details where ProductPrice < 90000 or QuantityAvailable > 50;

select *from Order_details order by ProductId;

update Product_Details set QuantityAvailable = 144 where ProductId = 112;
update Product_Details set QuantityAvailable = 99 where ProductId = 123;
update Product_Details set QuantityAvailable = 343 where ProductId = 324;
update Product_Details set QuantityAvailable = 319 where ProductId = 342;
update Product_Details set QuantityAvailable = 193 where ProductId = 343;
update Product_Details set QuantityAvailable = 79 where ProductId = 423;
update Product_Details set QuantityAvailable = 360 where ProductId = 493;
update Product_Details set QuantityAvailable = 261 where ProductId = 494;
update Product_Details set QuantityAvailable = 383 where ProductId = 532;
update Product_Details set QuantityAvailable = 165 where ProductId = 534;
update Product_Details set QuantityAvailable = 308 where ProductId = 543;
update Product_Details set QuantityAvailable = 488 where ProductId = 634;
update Product_Details set QuantityAvailable = 754 where ProductId = 685;
update Product_Details set QuantityAvailable = 68 where ProductId = 847;
update Product_Details set QuantityAvailable = 83 where ProductId = 909;
update Product_Details set QuantityAvailable = 286 where ProductId = 934;

select CustomerId, count(distinct OrderId), 
MAX(purch_amt) 
from Order_details
group by CustomerId 
order by 3;

select ProductId,  
MAX(QuantityOrdered) 
from Order_details
group by ProductId
order by 2;


select c.CustomerName , c.CustomerAddress, p.ProductName, p.ProductPrice, o.OrderId
from Order_details o 
left join Customer_details c on  c.CustomerId = o.CustomerId
left join Product_Details p on p.ProductId = o.ProductId 


