package com.nhom28.quanlibanhang.ui;

import java.sql.SQLException;
import java.util.List;

import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import com.nhom28.quanlibanhang.dto.ComboItem;
import com.nhom28.quanlibanhang.pojo.KhachHang;
import com.nhom28.quanlibanhang.pojo.KhuVuc;
import com.nhom28.quanlibanhang.pojo.NguoiDung;
import com.nhom28.quanlibanhang.pojo.NhanVien;
import com.nhom28.quanlibanhang.pojo.NhomNguoiDung;
import com.nhom28.quanlibanhang.service.NguoiDungService;
import com.nhom28.quanlibanhang.service.NhanVienService;
import com.nhom28.quanlibanhang.service.NhomNguoiDungService;
import com.nhom28.quanlibanhang.service.impl.NguoiDungServiceImpl;
import com.nhom28.quanlibanhang.service.impl.NhanVienServiceImpl;
import com.nhom28.quanlibanhang.service.impl.NhomNguoiDungServiceImpl;

/**
 *
 * @author Google
 */
public class NguoiDungJFrame extends javax.swing.JFrame {
	
	NguoiDungService nguoiDungService = new NguoiDungServiceImpl();
	
	NhanVienService nhanVienService = new NhanVienServiceImpl();
	
	NhomNguoiDungService nhomService = new NhomNguoiDungServiceImpl();
	
	
	private int nguoiDungId = 0;
    /**
     * Creates new form NguoiDungJFrame
     */	
	
    public NguoiDungJFrame() {
        initComponents();
        loadRecords();
        loadDataComboBox();
        
        jTable1.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent evt) {
				if (jTable1.getSelectedRow() >= 0) {
                	int selectedRow = jTable1.getSelectedRow();
                	
                	/*"ID", "Tên Đăng Nhập", "Chức Vụ"
                    , "Mô Tả", "Tên Nhân Viên"*/
                	
                    Integer id = Integer.parseInt(jTable1.getModel().getValueAt(selectedRow, 0).toString());
                    String tenDangNhap = jTable1.getModel().getValueAt(selectedRow, 1).toString();
                    String moTa = jTable1.getModel().getValueAt(selectedRow, 3).toString();
                    
                    
                  
                    
                    txtTaiKhoan.setText(tenDangNhap);                    
                    txtMoTa.setText(moTa);
                    
                    NguoiDung ng = nguoiDungService.getNguoiDungByMa(id);
                    
                
                   /* int key = 0;
                    for (KhuVuc kv : khuVucList) {
                    	if(khuVuc.equalsIgnoreCase(kv.getTenKhuVuc())) {
                    		key = kv.getId();
                    	}
					}*/
                    ComboItem item = new ComboItem(String.valueOf(ng.getNhomNguoiDung().getId()), ng.getNhomNguoiDung().getTenNhom());                    
                    cbbChucVu.setSelectedItem(item);
                    
                    ComboItem itemNV = new ComboItem(String.valueOf(ng.getNhanVien().getId()), ng.getNhanVien().getTenNhanVien());                    
                    cbbNhanVien.setSelectedItem(itemNV);
                    
                   nguoiDungId = id;
                }
			}
		});
        

        if(jTable1.getRowCount() > 0) {
        	jTable1.changeSelection(0, 0, false, false);
        }
    }
    
    private void loadDataComboBox() {
    	for (NhomNguoiDung nhomNguoiDung : nguoiDungService.getAllNhomNguoiDung()) {
    		cbbChucVu.addItem(new ComboItem(String.valueOf(nhomNguoiDung.getId()), nhomNguoiDung.getTenNhom()));
		}
    	// load data cho combox Nhan Vien
    	try {
			for (NhanVien nhanVien : nhanVienService.getAllNhanVien()) {
				cbbNhanVien.addItem(new ComboItem(String.valueOf(nhanVien.getId()), nhanVien.getTenNhanVien()));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	
    }
    
    
    private void loadRecords() {
    	
    	
 		List<NguoiDung> nguoiDungList = nguoiDungService.getAllNguoiDung();
         String DonViTinhColumn[] = {"ID", "Tên Đăng Nhập", "Chức Vụ"
                 , "Mô Tả", "Tên Nhân Viên"};
             TableModel tableModel = new DefaultTableModel(DonViTinhColumn, 0) {
                 @Override
                 public boolean isCellEditable(int row, int column) {
                     return true;
                 }
             };

         jTable1.setModel(tableModel);     
         for (int i = 0; i < nguoiDungList.size(); i++) {
         	NguoiDung ng = nguoiDungList.get(i);
             int id = ng.getId();
             String tenDangNhap = ng.getTenDangNhap();
             String chucVu = ng.getNhomNguoiDung().getTenNhom();
             String moTa = ng.getMoTa();
             String tenNhanVien = ng.getNhanVien().getTenNhanVien();

             Object[] data = { id, tenDangNhap, chucVu, moTa, tenNhanVien};
             ((DefaultTableModel) tableModel).addRow(data);
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

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtTaiKhoan = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        cbbChucVu = new javax.swing.JComboBox<ComboItem>();
        jLabel4 = new javax.swing.JLabel();
        txtMoTa = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        cbbNhanVien = new javax.swing.JComboBox<ComboItem>();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        btnThem = new javax.swing.JButton();
        btnSua = new javax.swing.JButton();
        btnThoat = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Người Dùng");

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Thông Tin Tài Khoản", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.ABOVE_TOP));

        jLabel1.setText("Tên Đăng Nhập");

        jLabel3.setText("Chức Vụ:");        

        jLabel4.setText("Mô Tả");

        jLabel5.setText("Nhân Viên");

        

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addComponent(jLabel3)
                    .addComponent(jLabel4)
                    .addComponent(jLabel5))
                .addGap(35, 35, 35)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtTaiKhoan)
                    .addComponent(cbbChucVu, 0, 179, Short.MAX_VALUE)
                    .addComponent(txtMoTa)
                    .addComponent(cbbNhanVien, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(120, 120, 120))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtTaiKhoan, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(cbbChucVu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtMoTa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(cbbNhanVien, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        btnThem.setText("Thêm");
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });

        btnSua.setText("Sửa");
        btnSua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSuaActionPerformed(evt);
            }
        });

        btnThoat.setText("Thoát");
        btnThoat.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThoatActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 568, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(136, 136, 136)
                        .addComponent(btnThem)
                        .addGap(32, 32, 32)
                        .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, 64, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(38, 38, 38)
                        .addComponent(btnThoat)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnThem)
                    .addComponent(btnSua)
                    .addComponent(btnThoat))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed
    	int dialogResult = JOptionPane.showConfirmDialog(null, "Bạn có muốn thêm Người Dùng mới không?", "Xác Nhận?", JOptionPane.YES_NO_OPTION);

        if (dialogResult == JOptionPane.YES_OPTION) {
            
        	try {                
        		NguoiDung ng = new NguoiDung();
        		ng.setTenDangNhap(txtTaiKhoan.getText());
        		ng.setMatKhau("123456");
        		ng.setMoTa(txtMoTa.getText());
        		
        		Object item = cbbChucVu.getSelectedItem();
                String key = ((ComboItem)item).getKey(); 
        		ng.setNhomNguoiDung( nhomService.getNhomNguoiDungById(Integer.valueOf(key)));
        		
        		Object itemNV = cbbNhanVien.getSelectedItem();
                String keyNV = ((ComboItem)item).getKey(); 
        		ng.setNhanVien(nhanVienService.getNhanVien(Integer.parseInt(keyNV)));
        		
        		nguoiDungService.insertNguoiDung(ng);
        		
                loadRecords();
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            
        }
    }//GEN-LAST:event_btnThemActionPerformed

    private void btnSuaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSuaActionPerformed
    	int dialogResult = JOptionPane.showConfirmDialog(null, "Bạn có muốn Sua Người Dùng mới không?", "Xác Nhận?", JOptionPane.YES_NO_OPTION);

        if (dialogResult == JOptionPane.YES_OPTION) {
            
        	try {
        		NguoiDung entity = nguoiDungService.getNguoiDungByMa(nguoiDungId);
        		
        		NguoiDung ng = new NguoiDung();
        		ng.setTenDangNhap(txtTaiKhoan.getText());
        		ng.setMatKhau(entity.getMatKhau());
        		ng.setConQuanLy(entity.getConQuanLy());
        		ng.setMoTa(txtMoTa.getText());
        		
        		Object item = cbbChucVu.getSelectedItem();
                String key = ((ComboItem)item).getKey(); 
        		ng.setNhomNguoiDung( nhomService.getNhomNguoiDungById(Integer.valueOf(key)));
        		
        		Object itemNV = cbbNhanVien.getSelectedItem();
                String keyNV = ((ComboItem)item).getKey(); 
        		ng.setNhanVien(nhanVienService.getNhanVien(Integer.parseInt(keyNV)));
        		
        		nguoiDungService.update(ng);
                loadRecords();
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            
        }
    }//GEN-LAST:event_btnSuaActionPerformed

    private void btnThoatActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThoatActionPerformed
       setVisible(false);
    }//GEN-LAST:event_btnThoatActionPerformed

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
            java.util.logging.Logger.getLogger(NguoiDungJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(NguoiDungJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(NguoiDungJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(NguoiDungJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NguoiDungJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnSua;
    private javax.swing.JButton btnThem;
    private javax.swing.JButton btnThoat;
    private JComboBox<ComboItem> cbbChucVu;
    private JComboBox<ComboItem> cbbNhanVien;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField txtMoTa;
    private javax.swing.JTextField txtTaiKhoan;
    // End of variables declaration//GEN-END:variables
}
