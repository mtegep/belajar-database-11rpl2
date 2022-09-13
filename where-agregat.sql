SELECT * FROM `siswa`
WHERE tempat_lahir = 'Bandung' OR jk = 'L' OR alamat = 'Subang';

SELECT * FROM `siswa`
WHERE tempat_lahir = 'Bandung' AND jk = 'L';

SELECT * FROM `siswa`
WHERE tempat_lahir = 'Subang' ORDER BY nama DESC;

SELECT * FROM `siswa`
WHERE nama LIKE 'A%';

SELECT * FROM `siswa`
WHERE nama LIKE '%PUT%';

SELECT * FROM `siswa` 
WHERE alamat LIKE '%ng';

SELECT tempat_lahir FROM `siswa` GROUP BY tempat_lahir;

SELECT alamat FROM `siswa` GROUP BY alamat;

SELECT * FROM `siswa`
WHERE tanggal_lahir BETWEEN '2005-03-01' AND '2005-06-30';

SELECT * FROM `siswa`
WHERE nama BETWEEN 'A%' AND 'D%';

SELECT * FROM `siswa`
WHERE nama BETWEEN 'A%' AND 'E%';

SELECT * FROM `siswa`
WHERE nama BETWEEN 'M' AND 'T';

SELECT nama, kelas, nilai AS nilai_lebih_kkm FROM `siswa`
WHERE nilai >= 78;

SELECT nama, kelas, tempat_lahir, nilai AS nilai_lebih_kkm FROM `siswa`
WHERE tempat_lahir = 'Subang' AND nilai >=78 ORDER BY nilai DESC;

SELECT nama, kelas, jk, nilai AS nilai_50_80 FROM `siswa`
WHERE jk = 'L' AND nilai BETWEEN 50 AND 80 ORDER BY nilai DESC;

SELECT tempat_lahir, COUNT(nis) AS jumlah_orang FROM siswa
GROUP BY tempat_lahir;

SELECT jk, MAX(nilai) AS nilai_tertinggi, MIN(nilai) as nilai_terendah FROM siswa
GROUP BY jk;

SELECT jk,
	AVG(nilai) AS rerata,
	MAX(nilai) AS nilai_tertinggi,
	MIN(nilai) AS nilai_terendah,
	SUM(nilai) AS jumlah_nilai
FROM siswa GROUP BY jk;
