package com.example.buysell.services;

import com.example.buysell.models.Product;
import com.example.buysell.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.jetbrains.annotations.NotNull;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {
    private final ProductRepository productRepository;



    public List<Product> ListProducts() {
         return productRepository.findAll();
    }

    public void saveProduct(Product product) {
       log.info("Saving new {}",product);
       productRepository.save(product);
    }

    public void delete(Long id) {
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
    return productRepository.findById(id).orElse(null);
    }
}
