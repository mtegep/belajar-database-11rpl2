create database sekolah;
show databases;
use sekolah;
create table siswa(
    -> 'nis' char(10) primary key,
    -> 'nama' varchar(100),
    -> 'jk' char(1),
    -> 'tempat_lahir' varchar(50),
    -> 'tanggal_lahir' date,
    -> 'alamat' text,
    -> 'kelas' varchar(10) ,
    -> 'nilai' float,
    -> 'jomblo' boolean);
show tables;
describe siswa;
insert into siswa values(
    -> '12100018',                                 
    -> 'ADNAN MAULANA',                            
    -> 'L',                                        
    -> 'SUBANG',                                    
    -> '2005-08-17',                              
    -> 'CIGADUNG',                                 
    -> '11-RPL-2',                                  
    -> '81.32',                                    
    -> '1');
insert into siswa values(
    -> '12100845',                                 
    -> 'YOSHI KARDIANA',                           
    -> 'L',                                        
    -> 'SUBANG',                                   
    -> '2005-12-25',                               
    -> 'TAMBAKAN',                                 
    -> '11-RPL-2',                                 
    -> '87.43',                                    
    -> '1');
insert into siswa values(
    -> '12100492',
    -> 'MUHAMMAD TEGEP RAHMANDA',
    -> 'L',
    -> 'SUBANG',
    -> '2006-02-23',
    -> 'BALENYENGKED',
    -> '11-RPL-2',
    -> '89.88',
    -> '1');
insert into siswa2 values(
    -> '12100686',
    -> 'SALSA AMELIA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-03-01',
    -> 'BABAKAN CURUG',
    -> '11-RPL-2',
    -> '72.96',
    -> '2');
insert into siswa values(
    -> '12100694',
    -> 'SALSABILA ZAHRA ANDINA',
    -> 'P',
    -> 'SUMEDANG',
    -> '2006-03-26',
    -> 'CIPAKU',
    -> '11-RPL-2',
    -> '80.72',
    -> '2');
update siswa set tempat_lahir='BANDUNG'
    -> WHERE
    -> nis='1210018';
update siswa set
    -> tanggal_lahir='2005-05-05',
    -> kelas='11-RPL-1'
    -> WHERE
    -> nis='1210018';
delete from siswa
    -> where nis='12100018';
select *from siswa;



