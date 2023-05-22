package com.example.buysell.models;

import jakarta.persistence.*;
import lombok.*;


@Entity
@Table(name = "products")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "title")
    private String title;
    private String description;
    private int price;
    private String city;
    private String author;

}
