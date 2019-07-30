/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.studentDao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.student.Student;

/**
 *
 * @author kaushik
 */
public class StudentDao {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname", "root", "root");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int insert(Student s) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "insert into student1(name,password,email,mobile,address) values (?,?,?,?,?)");
            ps.setString(1, s.getName());
            ps.setString(2, s.getReg_Password());
            ps.setString(3, s.getEmail());
            ps.setString(4, s.getMobile());
            ps.setString(5, s.getAddress());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Student s) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "update student1 set name=?,password=?,email=?,mobile=?,address=? where id=?");

            ps.setString(1, s.getName());
            ps.setString(2, s.getReg_Password());
            ps.setString(3, s.getEmail());
            ps.setString(4, s.getMobile());
            ps.setString(5, s.getAddress());
            ps.setInt(6, s.getId());

            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(int id) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from student1 where id=?");
            ps.setInt(1, id);
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Student> getAllRecords() {
        List<Student> list = new ArrayList<Student>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from student1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt(1));
                s.setName(rs.getString(2));
                s.setReg_Password(rs.getString(3));
                s.setEmail(rs.getString(4));
                s.setMobile(rs.getString(5));
                s.setAddress(rs.getString(6));
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Student getStudentById(int id) {
        Student s = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from student1 where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                s = new Student();
                s.setId(rs.getInt(1));
                s.setName(rs.getString(2));
                s.setReg_Password(rs.getString(3));
                s.setEmail(rs.getString(4));
                s.setMobile(rs.getString(5));
                s.setAddress(rs.getString(6));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return s;
    }

}
