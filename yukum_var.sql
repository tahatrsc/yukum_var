
create table cargo(
yuk_id int primary key,
satici_id int,
acýklama text not null,
agirlik decimal (10,2) not null,
alma_konumu varchar(255) not null,
teslimat_konumu varchar(255) not null,
durum varchar(50)not null,
CONSTRAINT durum CHECK (durum IN ('teslim edildi', 'bekliyor', 'devam ediyor') default 'bekliyor',
olusturma_zamani timestamp default simdiki_zaman,
update_zamani timestamp default simdiki zaman on update simdiki_zaman,
FOREIGN KEY (satici_id) REFERENCES Kullanýcýlar(user_id) ON DELETE CASCADE

);