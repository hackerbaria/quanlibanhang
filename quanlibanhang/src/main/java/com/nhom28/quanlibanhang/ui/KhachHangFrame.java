/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhom28.quanlibanhang.ui;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.ButtonGroup;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import com.nhom28.quanlibanhang.dto.ComboItem;
import com.nhom28.quanlibanhang.pojo.DonViTinh;
import com.nhom28.quanlibanhang.pojo.KhachHang;
import com.nhom28.quanlibanhang.pojo.KhuVuc;
import com.nhom28.quanlibanhang.service.KhachHangService;
import com.nhom28.quanlibanhang.service.KhuVucService;
import com.nhom28.quanlibanhang.service.impl.KhachHangServiceImpl;
import com.nhom28.quanlibanhang.service.impl.KhuVucServiceImpl;

/**
 *
 * @author Google
 */
public class KhachHangFrame extends javax.swing.JFrame {
	
	KhachHangService khachHangService = new KhachHangServiceImpl();
	
	KhuVucService khuVucService = new KhuVucServiceImpl();
	List<KhuVuc> khuVucList = khuVucService.getAllListKhuVuc();

    /**
     * Creates new form KhachHangFrame
     */
    public KhachHangFrame() {
        initComponents();
        //JScrollPane js = new JScrollPane(jTable1, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
    	jTable1.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
        ButtonGroup bG = new ButtonGroup();
        bG.add(rdbDaiLy);
        bG.add(rdbKhachLe);
      
        loadComboBox();
        jTable1.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent evt) {
				if (jTable1.getSelectedRow() >= 0) {
                	int selectedRow = jTable1.getSelectedRow();
                	
                    Integer id = Integer.parseInt(jTable1.getModel().getValueAt(selectedRow, 0).toString());
                    String tenKh = jTable1.getModel().getValueAt(selectedRow, 1).toString();
                    String khuVuc = jTable1.getModel().getValueAt(selectedRow, 2).toString();
                    String diaChi = jTable1.getModel().getValueAt(selectedRow, 3).toString();
                    String maSoThue = jTable1.getModel().getValueAt(selectedRow, 4).toString();
                    String dienThoai = jTable1.getModel().getValueAt(selectedRow, 5).toString();
                    String email = jTable1.getModel().getValueAt(selectedRow, 6).toString();
                    String taiKhoan = jTable1.getModel().getValueAt(selectedRow, 7).toString();
                    String gioiHanNo = jTable1.getModel().getValueAt(selectedRow, 8).toString();
                    String chietKhau = jTable1.getModel().getValueAt(selectedRow, 9).toString();
                    String nguoiLienHe = jTable1.getModel().getValueAt(selectedRow, 10).toString();
                    String fax = jTable1.getModel().getValueAt(selectedRow, 11).toString();
                    String mobile = jTable1.getModel().getValueAt(selectedRow, 12).toString();
                    String website = jTable1.getModel().getValueAt(selectedRow, 13).toString();
                    String nganHang = jTable1.getModel().getValueAt(selectedRow, 14).toString();
                    String noHienTai = jTable1.getModel().getValueAt(selectedRow, 15).toString();
                    String nickYahoo = String.valueOf(jTable1.getModel().getValueAt(selectedRow, 16));
                    String nickSkype = String.valueOf(jTable1.getModel().getValueAt(selectedRow, 17));   
                    String laDaiLy = String.valueOf(jTable1.getModel().getValueAt(selectedRow, 18));
                    String conQuanLy = String.valueOf(jTable1.getModel().getValueAt(selectedRow, 19));
                    
                    txtMa.setText(id + "");
                    txtTen.setText(tenKh); 
                    
                    int key = 0;
                    for (KhuVuc kv : khuVucList) {
                    	if(khuVuc.equalsIgnoreCase(kv.getTenKhuVuc())) {
                    		key = kv.getId();
                    	}
					}
                    ComboItem item = new ComboItem(String.valueOf(key), khuVuc);                    
                    cbbKhuVuc.setSelectedItem(item);
                    
                    txtDiaChi.setText(diaChi);
                    txtMaSoThue.setText(maSoThue);
                    txtDienThoai.setText(dienThoai);
                    txtEmail.setText(email);
                    txtTaiKhoan.setText(taiKhoan);
                    jTextField11.setText(gioiHanNo);
                    txtChietKhau.setText(chietKhau);
                    txtNguoiLienHe.setText(nguoiLienHe);
                    txtFax.setText(fax);
                    txtMobile.setText(mobile);
                    txtWebstite.setText(website);
                    txtNganHang.setText(nganHang);
                    txtNoHienTai.setText(noHienTai);
                    txtNickYahoo.setText(nickYahoo);
                    txtNickSkype.setText(nickSkype);
                    if(Integer.parseInt(laDaiLy) == 1) {
                    	rdbDaiLy.setSelected(true);
                    } else {
                    	rdbKhachLe.setSelected(true);
                    }
                    
                    if(Integer.parseInt(conQuanLy) == 1) {
                    	chbConQuanLi.setSelected(true);
                    }
                }
			}
		});
        
        txtMa.setEnabled(false);
        if(jTable1.getRowCount() > 0) {
        	jTable1.changeSelection(0, 0, false, false);
        }
    }
    
   
    public void loadComboBox() {   	
    	
    	
    	for (KhuVuc khuVuc : khuVucList) {
    		cbbKhuVuc.addItem(new ComboItem(String.valueOf(khuVuc.getId()), khuVuc.getTenKhuVuc()));
		}
    	
    	
    }
    
    private void loadRecords() throws SQLException {
    	
    	
		List<KhachHang> khachHangList = khachHangService.getAllKhachHang();
        String DonViTinhColumn[] = {"Mã Khách Hàng", "Tên Khách Hàng", "Khu Vực"
                , "Địa Chỉ", "Mã Số Thuế", "Điện Thoại", "Email",
                "Tài Khoản",  "Giới Hạn Nợ", "Chiết Khấu"
                , "Người Liên Hệ", "Fax", "Mobile", "Website",
                "Ngân Hàng", "Nợ Hiện Tại", "Nick Yahoo", "Nick Skype", "Quy Mô", "Còn Quản Lý"};
            TableModel tableModel = new DefaultTableModel(DonViTinhColumn, 0) {
                @Override
                public boolean isCellEditable(int row, int column) {
                    return true;
                }
            };

        jTable1.setModel(tableModel);     
        for (int i = 0; i < khachHangList.size(); i++) {
        	KhachHang kh = khachHangList.get(i);
            int ma = kh.getId();
            String tenKh = kh.getTenKhachHang();
            String khuVuc = kh.getKhuVuc().getTenKhuVuc();
            String diaChi = kh.getDiaChi();
            String maSoThue = kh.getMaSoThue();
            String dienThoai = kh.getDienThoai();
            String email = kh.getEmail();
            String taiKhoan = kh.getSoTaiKhoan();
            double gioiHanNo = kh.getGioiHanNo();
            double chietKhau = kh.getChietKhau();
            String nguoiLienHe = kh.getNguoiLienHe();
            String fax = kh.getFax();
            String mobile = kh.getDiDong();
            String website = kh.getWebsite();
            String nganHang = kh.getNganHang();
            double noHienTai = kh.getNoHienTai();
            String nickYahoo = kh.getNickYahoo();
            String nickSkype = kh.getNickSkype();
            byte laDaiLy = kh.getLaDaiLy();
            byte conQuanLy = kh.getConQuanLy();

            Object[] data = { ma, tenKh, khuVuc, diaChi, maSoThue, dienThoai,
            		email, taiKhoan, gioiHanNo, chietKhau, nguoiLienHe, fax,
            		mobile, website, nganHang, noHienTai, nickYahoo, nickSkype,laDaiLy, conQuanLy};
            ((DefaultTableModel) tableModel).addRow(data);
        }
        
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        rdbDaiLy = new javax.swing.JRadioButton();
        rdbKhachLe = new javax.swing.JRadioButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        txtTen = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtDiaChi = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txtMaSoThue = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        txtFax = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        txtEmail = new javax.swing.JTextField();
        txtDienThoai = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        txtTaiKhoan = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jTextField11 = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        txtChietKhau = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        txtNguoiLienHe = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        txtMobile = new javax.swing.JTextField();
        txtNganHang = new javax.swing.JTextField();
        txtWebstite = new javax.swing.JTextField();
        txtNoHienTai = new javax.swing.JTextField();
        txtNickYahoo = new javax.swing.JTextField();
        txtNickSkype = new javax.swing.JTextField();
        txtMa = new javax.swing.JTextField();
        chbConQuanLi = new javax.swing.JCheckBox();
        cbbKhuVuc = new javax.swing.JComboBox<ComboItem>();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        btnXoa = new javax.swing.JButton();
        btnSua = new javax.swing.JButton();
        btnThem = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Khách Hàng");

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Thông Tin Khách Hàng", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.ABOVE_TOP));

        rdbDaiLy.setText("Đại Lý");

        rdbKhachLe.setText("Khách Lẻ");

        jLabel1.setText("Mã (*)");

        jLabel2.setText("Tên(*)");

        jLabel3.setText("Khu Vực (*)");

        jLabel4.setText("Địa Chỉ");

        jLabel5.setText("Mã Số Thuế");

        jLabel6.setText("Fax");

        jLabel7.setText("Điện Thoại");

        jLabel8.setText("Email");

        jLabel9.setText("Tài Khoản");

        jLabel10.setText("Giới Hạn Nợ");

        jLabel11.setText("Chiết Khấu");

        jLabel12.setText("Người Liên Hệ");

        jLabel13.setText("Mobile");

        jLabel14.setText("Website");

        jLabel15.setText("Ngân Hàng");

        jLabel16.setText("Nợ Hiện Tại");

        jLabel17.setText("Nick Yahoo");

        jLabel18.setText("Nick Skype");

        chbConQuanLi.setText("Còn Quản Lý");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel9)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel10)
                        .addGap(45, 45, 45)
                        .addComponent(jTextField11, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel16)))
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addComponent(jLabel1)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(jLabel3))
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(jPanel1Layout.createSequentialGroup()
                                                .addComponent(rdbDaiLy)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                                .addComponent(rdbKhachLe))
                                            .addGroup(jPanel1Layout.createSequentialGroup()
                                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                                        .addComponent(jLabel8)
                                                        .addGap(280, 280, 280))
                                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                                        .addComponent(txtTaiKhoan, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                        .addGap(18, 18, 18)))
                                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                    .addComponent(jLabel15)
                                                    .addComponent(jLabel14)))
                                            .addComponent(jLabel5))
                                        .addGap(0, 0, Short.MAX_VALUE)))
                                .addGap(16, 16, 16)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtFax, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtMobile, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtWebstite, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtNganHang, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtNoHienTai, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtNickYahoo, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(2, 2, 2))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel4)
                                    .addComponent(jLabel2))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(txtDiaChi, javax.swing.GroupLayout.PREFERRED_SIZE, 574, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(jPanel1Layout.createSequentialGroup()
                                            .addComponent(txtMa, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addGap(102, 102, 102)
                                            .addComponent(cbbKhuVuc, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addComponent(txtTen, javax.swing.GroupLayout.PREFERRED_SIZE, 573, javax.swing.GroupLayout.PREFERRED_SIZE))))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(txtMaSoThue, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtEmail, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addComponent(jLabel7)
                                        .addGap(37, 37, 37)
                                        .addComponent(txtDienThoai, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addGap(18, 18, 18)
                                        .addComponent(jLabel13))
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addGap(23, 23, 23)
                                        .addComponent(jLabel6)))
                                .addGap(0, 0, Short.MAX_VALUE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addGap(0, 0, Short.MAX_VALUE)
                                .addComponent(chbConQuanLi)))
                        .addGap(85, 85, 85))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel11)
                            .addComponent(jLabel12))
                        .addGap(23, 23, 23)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(txtNguoiLienHe, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel18)
                                .addGap(18, 18, 18)
                                .addComponent(txtNickSkype, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(txtChietKhau, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel17)))
                        .addGap(0, 0, Short.MAX_VALUE))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(rdbDaiLy)
                    .addComponent(rdbKhachLe)
                    .addComponent(chbConQuanLi))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel3)
                    .addComponent(txtMa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cbbKhuVuc, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtTen, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtDiaChi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel6)
                        .addComponent(txtFax, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel5)
                        .addComponent(txtMaSoThue, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel7)
                        .addComponent(jLabel13)
                        .addComponent(txtMobile, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(txtDienThoai, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtEmail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8)
                    .addComponent(jLabel14)
                    .addComponent(txtWebstite, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtTaiKhoan, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9)
                    .addComponent(jLabel15)
                    .addComponent(txtNganHang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel10)
                    .addComponent(jTextField11, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel16)
                    .addComponent(txtNoHienTai, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtChietKhau, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel11)
                    .addComponent(jLabel17)
                    .addComponent(txtNickYahoo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtNguoiLienHe, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel12)
                    .addComponent(jLabel18)
                    .addComponent(txtNickSkype, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
        );

        try {
			loadRecords();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
        jScrollPane1.setViewportView(jTable1);

        btnXoa.setText("Xóa");
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaActionPerformed(evt);
            }
        });

        btnSua.setText("Sửa");
        btnSua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSuaActionPerformed(evt);
            }
        });

        btnThem.setText("Thêm");
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
            .addGroup(layout.createSequentialGroup()
                .addGap(111, 111, 111)
                .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(31, 31, 31)
                .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(41, 41, 41)
                .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 113, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btnSua)
                            .addComponent(btnXoa))
                        .addGap(3, 3, 3))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(btnThem)
                        .addContainerGap())))
        );

        pack();
    }// </editor-fold>                        

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {                                        
    	int dialogResult = JOptionPane.showConfirmDialog(null, "Bạn có muốn thêm khách hàng mới không?", "Xác Nhận?", JOptionPane.YES_NO_OPTION);

        if (dialogResult == JOptionPane.YES_OPTION) {
            
        	try {                
        		KhachHang kh = new KhachHang();
        		kh.setChietKhau(Float.valueOf(txtChietKhau.getText()));
        		byte conQuanLy = (byte) (chbConQuanLi.isSelected()?1:0);
        		kh.setConQuanLy(conQuanLy);
        		
        		kh.setDiaChi(txtDiaChi.getText());
        		kh.setDiDong(txtMobile.getText());
        		kh.setDienThoai(txtDienThoai.getText());
        		kh.setEmail(txtEmail.getText());
        		kh.setFax(txtFax.getText());
        		kh.setGioiHanNo(Double.valueOf(jTextField11.getText()));
        		
        		byte laDaiLy = (byte) (rdbDaiLy.isSelected()?1:0);
        		kh.setLaDaiLy(laDaiLy);
        		
        		kh.setMaKhachHang(txtMa.getText());
        		kh.setMaSoThue(txtMaSoThue.getText());
        		kh.setNganHang(txtNganHang.getText());
        		kh.setNguoiLienHe(txtNguoiLienHe.getText());
        		kh.setNickSkype(txtNickSkype.getText());
        		kh.setNickYahoo(txtNickYahoo.getText());
        		kh.setNoHienTai(Double.valueOf(txtNoHienTai.getText()));
        		kh.setSoTaiKhoan(txtTaiKhoan.getText());
        		kh.setTenKhachHang(txtTen.getText());
        		kh.setWebsite(txtWebstite.getText());
        		
        		// lay doi tuong khu vuc
        		 Object item = cbbKhuVuc.getSelectedItem();
                 String key = ((ComboItem)item).getKey();                
                 KhuVuc kv = new KhuVuc();                 
                                
                 for (KhuVuc kc : khuVucList) {
 					if(key.equalsIgnoreCase(String.valueOf(kc.getId()))) {
 						kv = kc;
 						break;
 					}
 				}
        		kh.setKhuVuc(kv);
        		
        		khachHangService.insert(kh);
        		
                loadRecords();
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            
        }
    }                                       

    private void btnSuaActionPerformed(java.awt.event.ActionEvent evt) {                                       
    	int dialogResult = JOptionPane.showConfirmDialog(null, "Bạn có muốn cập nhật thông tin của khách hàng này không?", "Xác Nhận?", JOptionPane.YES_NO_OPTION);

        if (dialogResult == JOptionPane.YES_OPTION) {
            
        	try {                
        		KhachHang kh = new KhachHang();
        		kh.setId(Integer.valueOf(txtMa.getText()));
        		kh.setChietKhau(Float.valueOf(txtChietKhau.getText()));
        		byte conQuanLy = (byte) (chbConQuanLi.isSelected()?1:0);
        		kh.setConQuanLy(conQuanLy);
        		
        		kh.setDiaChi(txtDiaChi.getText());
        		kh.setDiDong(txtMobile.getText());
        		kh.setDienThoai(txtDienThoai.getText());
        		kh.setEmail(txtEmail.getText());
        		kh.setFax(txtFax.getText());
        		kh.setGioiHanNo(Double.valueOf(jTextField11.getText()));
        		
        		byte laDaiLy = (byte) (rdbDaiLy.isSelected()?1:0);
        		kh.setLaDaiLy(laDaiLy);
        		
        		kh.setMaKhachHang(txtMa.getText());
        		kh.setMaSoThue(txtMaSoThue.getText());
        		kh.setNganHang(txtNganHang.getText());
        		kh.setNguoiLienHe(txtNguoiLienHe.getText());
        		kh.setNickSkype(txtNickSkype.getText());
        		kh.setNickYahoo(txtNickYahoo.getText());
        		kh.setNoHienTai(Double.valueOf(txtNoHienTai.getText()));
        		kh.setSoTaiKhoan(txtTaiKhoan.getText());
        		kh.setTenKhachHang(txtTen.getText());
        		kh.setWebsite(txtWebstite.getText());
        		
        		// lay doi tuong khu vuc
        		 Object item = cbbKhuVuc.getSelectedItem();
                 String key = ((ComboItem)item).getKey();                
                 KhuVuc kv = new KhuVuc();                 
                                
                 for (KhuVuc kc : khuVucList) {
 					if(key.equalsIgnoreCase(String.valueOf(kc.getId()))) {
 						kv = kc;
 						break;
 					}
 				}
        		kh.setKhuVuc(kv);
        		
        		khachHangService.update(kh);
        		
                loadRecords();
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            
        }
    }                                      

    private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {                                       
    	int dialogResult = JOptionPane.showConfirmDialog(null, "Bạn có xóa khách hàng này không?", "Xác Nhận?", JOptionPane.YES_NO_OPTION);

        if (dialogResult == JOptionPane.YES_OPTION) {
            
        	try {                
        		KhachHang kh = khachHangService.getKhachHangByMa(Integer.valueOf(txtMa.getText()));
        		
        		khachHangService.delete(kh);
        		
                loadRecords();
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            
        }
    }                                      

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(KhachHangFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(KhachHangFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(KhachHangFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(KhachHangFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new KhachHangFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify                     
    private javax.swing.JButton btnSua;
    private javax.swing.JButton btnThem;
    private javax.swing.JButton btnXoa;
    private JComboBox<ComboItem> cbbKhuVuc;
    private javax.swing.JCheckBox chbConQuanLi;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField jTextField11;
    private javax.swing.JRadioButton rdbDaiLy;
    private javax.swing.JRadioButton rdbKhachLe;
    private javax.swing.JTextField txtChietKhau;
    private javax.swing.JTextField txtDiaChi;
    private javax.swing.JTextField txtDienThoai;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextField txtFax;
    private javax.swing.JTextField txtMa;
    private javax.swing.JTextField txtMaSoThue;
    private javax.swing.JTextField txtMobile;
    private javax.swing.JTextField txtNganHang;
    private javax.swing.JTextField txtNguoiLienHe;
    private javax.swing.JTextField txtNickSkype;
    private javax.swing.JTextField txtNickYahoo;
    private javax.swing.JTextField txtNoHienTai;
    private javax.swing.JTextField txtTaiKhoan;
    private javax.swing.JTextField txtTen;
    private javax.swing.JTextField txtWebstite;
    // End of variables declaration                   
}
