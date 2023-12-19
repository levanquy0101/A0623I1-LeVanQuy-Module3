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
select khach_hang.ma_khach_hang, khach_hang.ho_ten, loai_khach.ten_loai_khach, hop_dong.ma_hop_dong, dich_vu.ten_dich_vu,
 hop_dong.ngay_lam_hop_dong, hop_dong.ngay_ket_thuc
from khach_hang
join loai_khach on loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
join hop_dong on hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
join dich_vu on dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
order by khach_hang.ma_khach_hang asc;