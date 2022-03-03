package com.mecol.hospital.service;

import com.mecol.hospital.entity.Doctor;
import com.mecol.hospital.entity.DoctorSearch;
import com.mecol.hospital.entity.Menu;
import com.mecol.hospital.util.ResultUtil;

import java.util.List;

public interface DoctorService {
    void insDoctor(Doctor doctor);

    Doctor login(String username, String encrypt);

    Doctor getDoctorById(Integer doctor_id);

    List<Menu> getMenus(Doctor doctor1);

    ResultUtil updateDoctor(Doctor doctor);

    Doctor getDoctorByUserName(String username);

    ResultUtil getAllDoctorList(Integer page, Integer limit, DoctorSearch search);

    ResultUtil deleteDoctorById(int doctor_id);

    List<Doctor> getDoctorByDepartId(Integer depart_id);
}
