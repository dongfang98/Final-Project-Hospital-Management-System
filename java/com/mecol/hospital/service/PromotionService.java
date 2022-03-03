package com.mecol.hospital.service;

import com.mecol.hospital.entity.Promotion;
import com.mecol.hospital.util.ResultUtil;

public interface PromotionService {
    ResultUtil getPromotionList(Integer page, Integer limit);

    void insPromotion(Promotion promotion);

    void delPromotionById(Integer promotion_id);
}
