package com.mecol.hospital.dao;

import com.mecol.hospital.entity.Promotion;

import java.util.List;

public interface PromotionDao {
    List<Promotion> getPromotionList();

    void insPromotion(Promotion promotion);

    void delPromotionById(Integer promotion_id);
}
