package com.example.javaweb.repository;
import com.example.javaweb.model.Product;
import java.util.ArrayList;
import java.util.List;

public class ImlProductRepositories implements IProductRepositories {
    protected static List<Product> productList ;
    static {
        productList = new ArrayList<>();
        productList.add(new Product(1,"Samsung","15/01/2022",20000,"Sản phẩm đang được giảm giá"));
        productList.add(new Product(2,"OPPO","11/01/2022",40000,"Sản phẩm đang được giảm giá"));
        productList.add(new Product(3,"Nokia","18/01/2022",60000,"Sản phẩm đang được giảm giá"));
        productList.add(new Product(4,"Iphone","25/01/2022",10000,"Sản phẩm đang được giảm giá"));
        productList.add(new Product(5,"Samsung","05/01/2022",3000,"Sản phẩm đang được giảm giá"));
        productList.add(new Product(6,"Samsung","15/01/2022",2000,"Sản phẩm đang được giảm giá"));
    }



    public List<Product> findAll() {
        return productList;
    }

    public void save(Product productNew) {
        if (productNew.getId() == 0) {
            // Nếu id là 0, tức là sản phẩm mới, thì thêm vào danh sách
            productNew.setId(productList.size() + 1);
            productList.add(productNew);
        } else {
            // Nếu id đã tồn tại, cập nhật thông tin của sản phẩm
            for (int i = 0; i < productList.size(); i++) {
                if (productList.get(i).getId() == productNew.getId()) {
                    productList.set(i, productNew);
                    break;
                }
            }
        }
    }
}

