package com.example.javaweb.repository;
import com.example.javaweb.model.Product;
import java.util.ArrayList;
import java.util.LinkedList;
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

    public void save(Product productNU) {
        if (productNU.getId() == 0) {
            // Nếu id là 0, tức là sản phẩm mới, thì thêm vào danh sách
            int lastID = productList.get(productList.size()-1).getId();
            productNU.setId(lastID+1);
            productList.add(productNU);
        } else {
            // Nếu id đã tồn tại, cập nhật thông tin của sản phẩm
            for (int i = 0; i < productList.size(); i++) {
                if (productList.get(i).getId() == productNU.getId()) {
                    productList.set(i, productNU);
                    break;
                }
            }
        }
    }

    @Override
    public Product findById(Integer id) {
        for (Product product : productList) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    @Override
    public void remove(int idDelete) {
        for(int i=0;i<productList.size();i++){
            if(productList.get(i).getId() == idDelete){
                productList.remove(productList.get(i));
//                productList.size();
            }
        }
    }
}

