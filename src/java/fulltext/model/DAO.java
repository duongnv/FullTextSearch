/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package fulltext.model;

import fulltext.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author duong_000
 */
public class DAO {
    
    protected Session getSession(){
        SessionFactory factory =  HibernateUtil.getSessionFactory();
        Session session = factory.openSession();
        return  session;
    }
    
}
