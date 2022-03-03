package com.mecol.hospital.dao;

import com.mecol.hospital.entity.Doctor;
import com.mecol.hospital.entity.DoctorSearch;
import com.mecol.hospital.util.ResultUtil;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DoctorDao {
    void insDoctor(Doctor doctor);

    Doctor login(@Param("username")String username, @Param("password")String password);

    Doctor getDoctorById(Integer doctor_id);

    void updateDoctor(Doctor doctor);

    Doctor getDoctorByUserName(String username);

    List<Doctor> getAllDoctorList(DoctorSearch search);

    void deleteDoctorById(int doctor_id);

    List<Doctor> getDoctorByDepartId(Integer depart_id);
}
