
create table odul(

odul_id int primary key,
sofor_id int,
ac�klama varchar (255) not null,
odul_puan� int,
verildigi_zaman datetime not null,
foreign key (sofor_id) references kullanicilar(kullanici_id) on delete cascade -- �of�r ile ili�kilendirme




);