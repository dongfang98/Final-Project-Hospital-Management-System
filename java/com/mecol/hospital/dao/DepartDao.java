package com.mecol.hospital.dao;

import com.mecol.hospital.entity.Depart;

import java.util.List;

public interface DepartDao {
    List<Depart> getCatalogList();

    Depart getDepartByDepartName(String depart);

    void addDepart(Depart depart);

    void updateDepart(Depart depart);

    Depart getDepartById(Integer depart_id);

    List<Depart> getAllDeparts();

    void delDepartById(Integer depart_id);
}
