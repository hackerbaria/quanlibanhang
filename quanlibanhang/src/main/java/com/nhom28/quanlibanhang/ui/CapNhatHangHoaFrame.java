/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhom28.quanlibanhang.ui;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import com.nhom28.quanlibanhang.common.GlobalVariables;
import com.nhom28.quanlibanhang.dto.ComboItem;
import com.nhom28.quanlibanhang.pojo.DonViTinh;
import com.nhom28.quanlibanhang.pojo.HangHoa;
import com.nhom28.quanlibanhang.pojo.KhuVuc;
import com.nhom28.quanlibanhang.pojo.NhaPhanPhoi;
import com.nhom28.quanlibanhang.pojo.NhomHang;
import com.nhom28.quanlibanhang.service.DonViTinhService;
import com.nhom28.quanlibanhang.service.HangHoaService;
import com.nhom28.quanlibanhang.service.KhuVucService;
import com.nhom28.quanlibanhang.service.NhanPhanPhoiService;
import com.nhom28.quanlibanhang.service.NhomHangService;
import com.nhom28.quanlibanhang.service.impl.DonViTinhServiceImpl;
import com.nhom28.quanlibanhang.service.impl.HangHoaServiceImpl;
import com.nhom28.quanlibanhang.service.impl.KhuVucServiceImpl;
import com.nhom28.quanlibanhang.service.impl.NhaPhanPhoiServiceImpl;
import com.nhom28.quanlibanhang.service.impl.NhomHangServiceImpl;


/**
 *
 * @author lehuyen
 */
public class CapNhatHangHoaFrame extends javax.swing.JFrame {
	
	NhomHangService nhomHangService = new NhomHangServiceImpl();
	
	NhanPhanPhoiService nppService = new NhaPhanPhoiServiceImpl();
	
	DonViTinhService donViService = new DonViTinhServiceImpl();
	
	HangHoaService hhService = new HangHoaServiceImpl();
	

    /**
     * Creates new form CapNhatHangHoa
     */
    public CapNhatHangHoaFrame() {
        initComponents();
        loadComBoBox();
        try {
			loadRecords();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        ButtonGroup bG = new ButtonGroup();
        bG.add(rdbDichVu);
        bG.add(rdbVatTu);
    }
    
    public void loadComBoBox() {
    	// load data cho combo box nhom hang
    	List<NhomHang> nhomHangList = new ArrayList<>();
		try {
			nhomHangList = nhomHangService.getAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	for (NhomHang nhomHang : nhomHangList) {
    		cbbNhomHang.addItem(new ComboItem(String.valueOf(nhomHang.getId()), nhomHang.getTenNhomHang()));
		}
    	
    	//load data cho combo box Nha Phan Phoi
    	List<NhaPhanPhoi> nppList = new ArrayList<>();
		
		nppList = nppService.getAllNhaPhanPhoi();
		
    	for (NhaPhanPhoi npp : nppList) {
    		cbbNhaPhanPhoi.addItem(new ComboItem(String.valueOf(npp.getId()), npp.getTenNhaPhanPhoi()));
		}
    	
    	//load data cho combo box Don Vi Tinh
    	List<DonViTinh> donViList = new ArrayList<>();
		
    	donViList = donViService.getAll();
		
    	for (DonViTinh donVi : donViList) {
    		cbbDonViTinh.addItem(new ComboItem(String.valueOf(donVi.getId()), donVi.getTenDonViTinh()));
		}
    	
    }
    
    
    // dinh dang kich thuoc cua hinh anh
    private Image getScaledImage(Image srcImg, int w, int h){
        BufferedImage resizedImg = new BufferedImage(w, h, BufferedImage.TYPE_INT_ARGB);
        Graphics2D g2 = resizedImg.createGraphics();

        g2.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
        g2.drawImage(srcImg, 0, 0, w, h, null);
        g2.dispose();

        return resizedImg;
    }
    
	public static String getBackUpPath() {

		String backUpPath = "";
		JFileChooser fc = null;
		if (fc == null) {
			fc = new JFileChooser();
			FileNameExtensionFilter filter = new FileNameExtensionFilter("Image Files", "jpg", "png", "gif", "jpeg");
			fc.setFileFilter(filter);
		}
		int returnVal = fc.showDialog(null, "Open");
		if (returnVal == JFileChooser.APPROVE_OPTION) {
			File file = fc.getSelectedFile();
			backUpPath = file.getAbsolutePath();
		}
		return backUpPath;
	}
    
    private void loadRecords() throws SQLException {
    	String ma = GlobalVariables.TEMP;
    	if(ma == null || ma.isEmpty()) {
    		ma = "1";
    	}
    	HangHoa hh = hhService.findHangHoaByMa(Integer.valueOf(ma));
    	txtMaHangHoa.setText(hh.getMaHangHoa());
    	txtTenHang.setText(hh.getTenHangHoa());
    	txtMaVach.setText(hh.getMaVachNhaSanXuat());
    	txtXuatXu.setText(hh.getXuatXu());
    	txtThue.setText(hh.getThue());
    	txtTonKhoToiThieu.setText(String.valueOf(hh.getTonKhoToiThieu()));
    	txtTonKhoToiDa.setText(String.valueOf(hh.getTonKhoHienTai()));
    	txtGiaMua.setText(String.valueOf(hh.getGiaMua()));
    	txtGiaSi.setText(String.valueOf(hh.getGiaBanSi()));
    	txtGiaLe.setText(String.valueOf(hh.getGiaBanLe()));
    	
    	
        ComboItem itemNhomHang = new ComboItem(String.valueOf(hh.getNhomHang().getId()), hh.getNhomHang().getTenNhomHang());                    
        cbbNhomHang.setSelectedItem(itemNhomHang);
        
        ComboItem itemDonVi = new ComboItem(String.valueOf(hh.getDonViTinh().getId()), hh.getDonViTinh().getTenDonViTinh());                    
        cbbDonViTinh.setSelectedItem(itemDonVi);
        
        ComboItem itemNpp = new ComboItem(String.valueOf(hh.getNhaPhanPhoi().getId()), hh.getNhaPhanPhoi().getTenNhaPhanPhoi());                    
        cbbNhaPhanPhoi.setSelectedItem(itemNpp);
        
        java.sql.Blob blob = hh.getHinhAnh();
        if(blob != null) {
        	InputStream in = blob.getBinaryStream();  
            try {
    			BufferedImage image = ImageIO.read(in);
    			lblAnh.setIcon(new ImageIcon(getScaledImage(image,206,187)));
    			
    		} catch (IOException e) {			
    			e.printStackTrace();
    		}
            
        }
        
    	
    	
		
	}

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel11 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        rdbVatTu = new javax.swing.JRadioButton();
        rdbDichVu = new javax.swing.JRadioButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        txtMaHangHoa = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtMaVach = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        txtXuatXu = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        txtThue = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        jpAnh = new javax.swing.JPanel();
        lblAnh = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        txtTonKhoToiThieu = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        txtTonKhoToiDa = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        txtGiaMua = new javax.swing.JTextField();
        txtGiaSi = new javax.swing.JTextField();
        txtGiaLe = new javax.swing.JTextField();
        btn_Luu = new javax.swing.JButton();
        btn_Dong = new javax.swing.JButton();
        txtTenHang = new javax.swing.JTextField();
        cbbNhomHang = new javax.swing.JComboBox<>();
        cbbDonViTinh = new javax.swing.JComboBox<>();
        cbbNhaPhanPhoi = new javax.swing.JComboBox<>();
        jButton1 = new javax.swing.JButton();
        btnDuyetAnh = new javax.swing.JButton();

        jLabel11.setText("jLabel11");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Câp Nhật Hàng Hóa & Dịch Vụ");

        jPanel1.setLayout(new java.awt.GridLayout(1, 0));

        rdbVatTu.setText("Vật Tư, Hàng Hóa");
        rdbVatTu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rdbVatTuActionPerformed(evt);
            }
        });
        jPanel1.add(rdbVatTu);

        rdbDichVu.setText("Dịch Vụ");
        jPanel1.add(rdbDichVu);

        getContentPane().add(jPanel1, java.awt.BorderLayout.PAGE_START);

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Thông Tin", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.ABOVE_TOP, new java.awt.Font("Tahoma", 0, 14))); // NOI18N

        jLabel1.setText("Mã Hàng Hóa :");

        jLabel2.setText("Nhóm Hàng :");

        jLabel3.setText("Tên Hàng:");

        jLabel4.setText("Mã vạch:");

        jLabel5.setText("Đơn Vị :");

        jLabel6.setText("Xuất Xư :");

        jLabel7.setText("Thuế :");

        jLabel10.setText("Nhà phân phối :");

        jpAnh.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Ảnh ", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.ABOVE_TOP));

        javax.swing.GroupLayout jpAnhLayout = new javax.swing.GroupLayout(jpAnh);
        jpAnh.setLayout(jpAnhLayout);
        jpAnhLayout.setHorizontalGroup(
            jpAnhLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jpAnhLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblAnh, javax.swing.GroupLayout.DEFAULT_SIZE, 206, Short.MAX_VALUE)
                .addContainerGap())
        );
        jpAnhLayout.setVerticalGroup(
            jpAnhLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jpAnhLayout.createSequentialGroup()
                .addComponent(lblAnh, javax.swing.GroupLayout.DEFAULT_SIZE, 187, Short.MAX_VALUE)
                .addContainerGap())
        );

        jLabel8.setText("Tồn kho tối thiểu :");

        jLabel9.setText("Tồn kho tối đa :");

        jLabel12.setText("Giá mua :");

        jLabel13.setText("Giá bán lẻ :");

        jLabel14.setText("Giá bán sỉ :");

        btn_Luu.setText("Lưu");

        btn_Dong.setText("Đóng");

        

        jButton1.setText("jButton1");

        btnDuyetAnh.setText("Duyệt ảnh...");
        btnDuyetAnh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDuyetAnhActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel5)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(cbbDonViTinh, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(303, 303, 303))
                            .addComponent(jLabel6)
                            .addComponent(jLabel7)
                            .addComponent(jLabel13)
                            .addComponent(jLabel14)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel1)
                                    .addComponent(jLabel3)
                                    .addComponent(jLabel2))
                                .addGap(31, 31, 31)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(jPanel2Layout.createSequentialGroup()
                                        .addComponent(txtMaHangHoa, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(27, 27, 27)
                                        .addComponent(jLabel4)
                                        .addGap(35, 35, 35)
                                        .addComponent(txtMaVach, javax.swing.GroupLayout.PREFERRED_SIZE, 164, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(cbbNhomHang, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGap(10, 10, 10)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel10)
                                    .addComponent(jLabel9)
                                    .addComponent(jLabel12))
                                .addGap(11, 11, 11))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel8)))
                        .addGap(15, 15, 15)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(btn_Luu, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(36, 36, 36)
                                .addComponent(btn_Dong, javax.swing.GroupLayout.PREFERRED_SIZE, 113, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                            .addComponent(txtTonKhoToiDa, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 157, Short.MAX_VALUE)
                                            .addComponent(txtTonKhoToiThieu, javax.swing.GroupLayout.Alignment.TRAILING))
                                        .addComponent(txtGiaMua, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(txtXuatXu, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtThue, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(txtGiaLe, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 157, Short.MAX_VALUE)
                                        .addComponent(txtGiaSi, javax.swing.GroupLayout.Alignment.TRAILING)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jpAnh, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(btnDuyetAnh)))
                            .addComponent(txtTenHang)
                            .addComponent(cbbNhaPhanPhoi, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton1)
                .addGap(156, 156, 156))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(cbbNhomHang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(23, 23, 23)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(txtMaHangHoa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel4)
                            .addComponent(txtMaVach, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(txtTenHang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel10)
                            .addComponent(cbbNhaPhanPhoi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jpAnh, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGap(21, 21, 21)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel2Layout.createSequentialGroup()
                                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel5)
                                            .addComponent(cbbDonViTinh, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(18, 18, 18)
                                        .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel7)
                                            .addComponent(txtThue, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel2Layout.createSequentialGroup()
                                        .addGap(38, 38, 38)
                                        .addComponent(txtXuatXu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGap(16, 16, 16)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(txtTonKhoToiThieu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel8))
                                .addGap(14, 14, 14)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel9)
                                    .addComponent(txtTonKhoToiDa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel12)
                                    .addComponent(txtGiaMua, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel14, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtGiaSi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnDuyetAnh)))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jButton1)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtGiaLe, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(14, 14, 14)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(btn_Dong, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(btn_Luu, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void rdbVatTuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rdbVatTuActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_rdbVatTuActionPerformed

    private void btnDuyetAnhActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDuyetAnhActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnDuyetAnhActionPerformed

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
            java.util.logging.Logger.getLogger(CapNhatHangHoaFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(CapNhatHangHoaFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(CapNhatHangHoaFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(CapNhatHangHoaFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new CapNhatHangHoaFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnDuyetAnh;
    private javax.swing.JButton btn_Dong;
    private javax.swing.JButton btn_Luu;
    private javax.swing.JComboBox<ComboItem> cbbDonViTinh;
    private javax.swing.JComboBox<ComboItem> cbbNhaPhanPhoi;
    private javax.swing.JComboBox<ComboItem> cbbNhomHang;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jpAnh;
    private javax.swing.JLabel lblAnh;
    private javax.swing.JRadioButton rdbDichVu;
    private javax.swing.JRadioButton rdbVatTu;
    private javax.swing.JTextField txtGiaLe;
    private javax.swing.JTextField txtGiaMua;
    private javax.swing.JTextField txtGiaSi;
    private javax.swing.JTextField txtMaHangHoa;
    private javax.swing.JTextField txtMaVach;
    private javax.swing.JTextField txtTenHang;
    private javax.swing.JTextField txtThue;
    private javax.swing.JTextField txtTonKhoToiDa;
    private javax.swing.JTextField txtTonKhoToiThieu;
    private javax.swing.JTextField txtXuatXu;
    // End of variables declaration//GEN-END:variables
}
