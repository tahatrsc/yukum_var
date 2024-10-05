

create table teslimat(

teslimat_id int primary key,
kargo_id int,
arac_id int,
sofor_id int,
teslimat_zamani datetime,
teslimat_durum varchar (20) default 'devam ediyor',
constraint t_durum check (teslimat_durum in ('tamamlandý','devam ediyor')),
kayit_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kayýt oluþturulurken otomatik tarih
güncel_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kayýt oluþturulurken baþlangýçta mevcut tarih
FOREIGN KEY (kargo_id) REFERENCES yuk(yuk_id) ON DELETE NO ACTION, -- Yük ile iliþki
FOREIGN KEY (sofor_id) REFERENCES kullanicilar(kullanici_id) ON DELETE NO ACTION,-- Þoför ile iliþki
FOREIGN KEY (arac_id) REFERENCES araclar(arac_id) ON DELETE NO ACTION -- Araç ile iliþki

);