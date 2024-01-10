use furama;

-- Câu 2: Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select nhan_vien.ma_nhan_vien, nhan_vien.ho_ten
from nhan_vien
where 
    (ho_ten like 'H%' or ho_ten like 'T%' or ho_ten like 'K%')
    and LENGTH(ho_ten) <= 15;
    
-- Câu 3: Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select khach_hang.ma_khach_hang, khach_hang.ho_ten
from khach_hang
where (khach_hang.dia_chi like '%Đà Nẵng' or khach_hang.dia_chi like '%Quảng Trị')
and (date_format(from_days(datediff(now(),ngay_sinh)),"%Y") between 18 and 50);

-- Câu 4: Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select khach_hang.ho_ten, hop_dong.ma_khach_hang, count(hop_dong.ma_khach_hang) as 'count_da_tung_dat_phong'
from khach_hang
join loai_khach on loai_khach.ma_loai_khach = khach_hang.ma_loai_khach and khach_hang.ma_loai_khach = 1
join hop_dong on hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
group by khach_hang.ho_ten, hop_dong.ma_khach_hang
order by count_da_tung_dat_phong asc;

-- Câu 5: Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
SELECT kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, 
hd.ma_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc,
IFNULL(SUM(dvdk.gia * hdct.so_luong),0) + dv.chi_phi_thue AS tong_tien  
FROM khach_hang kh
LEFT JOIN loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach  
LEFT JOIN hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
LEFT JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
LEFT JOIN hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong  
LEFT JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY kh.ma_khach_hang, hd.ma_hop_dong;

-- Câu 6: Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
SELECT ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu
FROM dich_vu
JOIN loai_dich_vu USING (ma_loai_dich_vu)
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            hop_dong
        WHERE
            YEAR(ngay_lam_hop_dong) = 2021
            AND QUARTER(ngay_lam_hop_dong) = 1
            AND dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
    );

-- Câu 7: Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021.
select dich_vu.ma_dich_vu, dich_vu.ten_dich_vu, dich_vu.dien_tich, dich_vu.so_nguoi_toi_da, dich_vu.chi_phi_thue, loai_dich_vu.ten_loai_dich_vu
from dich_vu
join hop_dong on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
join loai_dich_vu on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
where hop_dong.ngay_ket_thuc like "2020%" and hop_dong.ma_dich_vu not in (
select hop_dong.ma_dich_vu
from hop_dong
join dich_vu on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
where hop_dong.ngay_ket_thuc like "2021%"
)
group by dich_vu.ma_dich_vu
;

-- Câu 8: Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau
-- Cách 1:
SELECT
    DISTINCT(ho_ten)
FROM
    khach_hang;
-- Cách 2:
SELECT ho_ten
FROM khach_hang
GROUP BY ho_ten;
-- Cách 3:
SELECT ho_ten FROM khach_hang
UNION
SELECT ho_ten FROM khach_hang;

-- Câu 9: Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
SELECT MONTH(ngay_lam_hop_dong) AS Thang, COUNT(DISTINCT ma_khach_hang) AS SoLuongKhachHang
FROM hop_dong
WHERE YEAR(ngay_lam_hop_dong) = 2021
GROUP BY MONTH(ngay_lam_hop_dong)
ORDER BY Thang;
