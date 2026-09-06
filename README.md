# IMDb & Spotify Database SQL

Bu repository SQL üzrə hazırlanmış iki fərqli database layihəsini əhatə edir: **IMDb** və **Spotify**.

Layihənin əsas məqsədi SQL-də database strukturu qurmaq, cədvəllər arasında əlaqələr yaratmaq və müxtəlif sorğular yazmaqdır.

## Layihələr

### IMDb Database

İstifadə olunan cədvəllər:

* Movies
* Directors
* Actors
* Genres

Yazılan sorğular:

* IMDb balı 6-dan yüksək olan filmlərin göstərilməsi
* Genre adına görə filmlərin filter edilməsi
* Film adının uzunluğuna və son hərfinə görə filter
* IMDb balı ümumi ortalamadan yüksək olan filmlərin göstərilməsi
* Movies, Genres, Directors və Actors cədvəllərinin JOIN vasitəsilə əlaqələndirilməsi

### Spotify Database

İstifadə olunan cədvəllər:

* Musics
* Artists
* Albums

Yazılan sorğular:

* Mahnının adı, müddəti, artist adı və album adının göstərilməsi
* Hər albumda neçə mahnı olduğunun hesablanması

## İstifadə olunan SQL mövzuları

* DDL və DML komandaları
* Primary Key
* Foreign Key
* Table Relations
* JOIN
* GROUP BY
* COUNT
* AVG
* Subquery
* WHERE
* ORDER BY

## Database əlaqələri

Spotify database-də əsas əlaqə:

```text
Artists  1 ─── N  Musics  N ─── 1  Albums
```

IMDb database-də isə filmlər, aktyorlar, rejissorlar və janrlar arasında uyğun əlaqələr qurulub.

## İstifadə

1. SQL fayllarını SQL Server Management Studio-da açın.
2. Database və table-ları yaradın.
3. Məlumatları əlavə edin.
4. Query-ləri icra edin.

---

Bu layihə SQL-də **database design, relations, joins və query** mövzularını praktika etmək məqsədilə hazırlanıb.
