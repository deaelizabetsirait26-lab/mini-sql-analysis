--Mini Project SQL--

--1. Analisa Produk--
select
name AS Nama_Produk,
category AS Kategori_Produk,
department As Department,
brand AS Merek,
retail_price AS Harga_Retail
from bigquery-public-data.thelook_ecommerce.products
limit 20;

--2. Identifikasi Produk Premium--
select
name AS Nama_Produk,
category AS Kategori_Produk,
brand AS Merek,
retail_price AS Harga_Retail
from bigquery-public-data.thelook_ecommerce.products
where retail_price > 100
order by Harga_Retail DESC;

--3. Evaluasi Kategori Produk--
select
category AS Kategori_Produk,
count (id) AS Total_Produk
from bigquery-public-data.thelook_ecommerce.products
group by Kategori_Produk
order by Total_Produk DESC;

--Insight : - Terdapat 26 kategori produk. 
            - Dengan total produk paling banyak adalah kategori Intimates dengan total 2363. 
            - Dan total produk paling kecil adalah produk Clothing Sets dengan total produk 37 buah.

--4. Mengenal Pelanggan dan Pesanan--
select
u.first_name AS Nama_Depan,
u.last_name AS Nama_Belakang,
o.order_id AS ID,
o.status AS Status,
o.created_at AS Tanggal_Pesanan
from bigquery-public-data.thelook_ecommerce.orders AS o
Inner join
bigquery-public-data.thelook_ecommerce.users AS u
on o.user_id = u.id;


--5. Analisa Penjualan per Kategori--
select
p.category AS Kategori_Produk,
round(sum(oi.sale_price),0) AS Total_Penjualan
from bigquery-public-data.thelook_ecommerce.order_items AS oi
Inner join
bigquery-public-data.thelook_ecommerce.products AS p
on oi.product_id = p.id
group by Kategori_Produk
order by Total_Penjualan DESC;

--Insight : Dari 26 kategori produk. Total penjualan paling besar adalah Underwear&Coats dengan total 1.319.208 
            dan penjualan paling kecil adalah Clothing Sets dengan total 16.455.
