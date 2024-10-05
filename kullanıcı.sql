

create table kullanicilar (

kullanici_id int primary key,
isim varchar (30)not null,
email varchar (30)not null unique,
sifre varchar(255)not null,
kullanici_turu varchar(20),
constraint k_tur check(kullanici_turu in ('sofor','satici')),
kayit_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kayýt oluþturulurken otomatik tarih
güncel_tarih DATETIME2 DEFAULT SYSDATETIME()	 -- Kayýt oluþturulurken baþlangýçta mevcut tarih

);
