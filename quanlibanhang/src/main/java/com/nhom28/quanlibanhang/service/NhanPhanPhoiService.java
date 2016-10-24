/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhom28.quanlibanhang.service;

import com.nhom28.quanlibanhang.pojo.KhuVuc;
import com.nhom28.quanlibanhang.pojo.NhaPhanPhoi;

import java.util.List;

/**
 *
 * @author Google
 */
public interface NhanPhanPhoiService {
    
    List<NhaPhanPhoi> getAllNhaPhanPhoi();
    
    List<KhuVuc> getListKhuVuc();
    
    void insert(NhaPhanPhoi entity);
    
    void delete(NhaPhanPhoi entity);
    
    void update(NhaPhanPhoi entity);
    
    NhaPhanPhoi findNhaPhanPhoiById(Integer id);
    
    
    
}
