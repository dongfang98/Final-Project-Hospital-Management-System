package com.mecol.hospital.service;

import com.mecol.hospital.entity.Reservation;
import com.mecol.hospital.util.ResultUtil;

public interface ReservationService {
    void addReservation(Reservation reservation);

    ResultUtil getAllMyReservationList(Integer page, Integer limit,Integer user_id);


    Reservation getResByResId(int res_id);

    void updateRes(Reservation reservation);

    ResultUtil getDoctorResList(Integer page, Integer limit, Integer doctor_id);

    ResultUtil getDoctorResDoneList(Integer page, Integer limit, Integer doctor_id);
}
