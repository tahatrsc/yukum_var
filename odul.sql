
create table odul(

odul_id int primary key,
sofor_id int,
acýklama varchar (255) not null,
odul_puaný int,
verildigi_zaman datetime not null,
foreign key (sofor_id) references kullanicilar(kullanici_id) on delete cascade -- Þoför ile iliþkilendirme




);