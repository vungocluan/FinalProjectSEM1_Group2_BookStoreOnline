DROP DATABASE IF EXISTS BookStoreOnline;

CREATE DATABASE BookStoreOnline;
USE BookStoreOnline;

CREATE TABLE IF NOT EXISTS Users(
		user_id int primary key not null,
        user_name nvarchar(255) ,
        user_password varchar(255) 
      
);
insert into Users(user_id, user_name, user_password)
value(1,"whatupp","123456");



CREATE TABLE IF NOT EXISTS Items(
		item_id int  primary key not null,
        item_name nvarchar(255)  ,
        author nvarchar(255) ,
        describe_item nvarchar(255) ,
        kind nvarchar(50),
        number_of_pages int(255) ,
       -- detail_items nvarchar(5000) not null,
		publishingcompany nvarchar(255) ,
        price decimal(10.2)
        
        
);
insert into Items(item_id, item_name, price, author, describe_item, kind, publishingcompany, number_of_pages)
values
("110","Dung Day manh Me",10000,"Nick Vujicic","Đứng dậy mạnh mẽ là cuốn sách đề cập đến nạn bắt nạt và những ảnh hưởng tiêu cực của nó.",
	"Kỹ năng sống","Nhà sách Phương Nam", 192),
("111","Quốc Gia Khởi Nghiệp",150000," Dan Senor - Saul Singer","“Quốc gia khởi nghiệp” là câu chuyện viết về sự phát triển thần kỳ của nền kinh tế Israel.",
	"Sách khởi nghiệp","Nhà sách AlphaBooks",403),
("112","Nửa Kia Của Hitler",120000,"Eric-Emmanuel Schmitt","Nửa kia của Hitler dựng lên chân dung hai nửa Hitler đối lập: một Adolf Hitler độc tài.",
	"Tiểu thuyết nước ngoài","Nhà sách Nhã Nam",624);
    
CREATE TABLE IF NOT EXISTS Orders(
		order_id int primary key not null,
       -- order_name nvarchar(255) not null,
        user_id int(11) ,
        amount int,
        order_date datetime 
        
);

CREATE TABLE IF NOT EXISTS Orderdetail(
order_id int  ,
item_id int ,
amount_item int

-- constraint fk_OderDetail foreign key(order_id) references Oders(oder_id),

);

alter table orderdetail add primary key (order_id, item_id);
alter table Orders add foreign key (user_id) references Users(user_id);
alter table OrderDetail add foreign key (order_id) references Orders(order_id);
alter table OrderDetail add foreign key (item_id) references Items(item_id);
select * from Items;








