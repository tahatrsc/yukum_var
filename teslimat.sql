

create table teslimat(

teslimat_id int primary key,
kargo_id int,
arac_id int,
sofor_id int,
teslimat_zamani datetime,
teslimat_durum varchar (20) default 'devam ediyor',
constraint t_durum check (teslimat_durum in ('tamamland�','devam ediyor')),
kayit_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kay�t olu�turulurken otomatik tarih
g�ncel_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kay�t olu�turulurken ba�lang��ta mevcut tarih
FOREIGN KEY (kargo_id) REFERENCES yuk(yuk_id) ON DELETE NO ACTION, -- Y�k ile ili�ki
FOREIGN KEY (sofor_id) REFERENCES kullanicilar(kullanici_id) ON DELETE NO ACTION,-- �of�r ile ili�ki
FOREIGN KEY (arac_id) REFERENCES araclar(arac_id) ON DELETE NO ACTION -- Ara� ile ili�ki

);