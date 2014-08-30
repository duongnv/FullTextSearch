/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package fulltext.model;

import fulltext.bo.ChiTietSach;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author duong_000
 */
public class ChiTietSachDAO extends DAO{
    
    
    public ChiTietSach getChiTietSach(String maSach){
        ChiTietSach chiTietSach = null;
        
        try{
            
            Session session = getSession();
            
            String sql = "from ChiTietSach where maSach = :maSach";
            
            Query query = session.createQuery(sql);
            query.setParameter("maSach", maSach);
            
            chiTietSach = (ChiTietSach) query.uniqueResult();
            
        }catch(HibernateException he){
            he.printStackTrace();
        }
        
        
        return chiTietSach;
    }
}
