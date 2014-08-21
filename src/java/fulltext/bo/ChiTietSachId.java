package fulltext.bo;
// Generated Aug 21, 2014 3:46:05 PM by Hibernate Tools 3.6.0


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * ChiTietSachId generated by hbm2java
 */
@Embeddable
public class ChiTietSachId  implements java.io.Serializable {


     private String maSach;
     private int maTacGia;
     private int maNxb;
     private int maLoai;

    public ChiTietSachId() {
    }

    public ChiTietSachId(String maSach, int maTacGia, int maNxb, int maLoai) {
       this.maSach = maSach;
       this.maTacGia = maTacGia;
       this.maNxb = maNxb;
       this.maLoai = maLoai;
    }
   


    @Column(name="ma_sach", nullable=false, length=10)
    public String getMaSach() {
        return this.maSach;
    }
    
    public void setMaSach(String maSach) {
        this.maSach = maSach;
    }


    @Column(name="ma_tac_gia", nullable=false)
    public int getMaTacGia() {
        return this.maTacGia;
    }
    
    public void setMaTacGia(int maTacGia) {
        this.maTacGia = maTacGia;
    }


    @Column(name="ma_nxb", nullable=false)
    public int getMaNxb() {
        return this.maNxb;
    }
    
    public void setMaNxb(int maNxb) {
        this.maNxb = maNxb;
    }


    @Column(name="ma_loai", nullable=false)
    public int getMaLoai() {
        return this.maLoai;
    }
    
    public void setMaLoai(int maLoai) {
        this.maLoai = maLoai;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof ChiTietSachId) ) return false;
		 ChiTietSachId castOther = ( ChiTietSachId ) other; 
         
		 return ( (this.getMaSach()==castOther.getMaSach()) || ( this.getMaSach()!=null && castOther.getMaSach()!=null && this.getMaSach().equals(castOther.getMaSach()) ) )
 && (this.getMaTacGia()==castOther.getMaTacGia())
 && (this.getMaNxb()==castOther.getMaNxb())
 && (this.getMaLoai()==castOther.getMaLoai());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getMaSach() == null ? 0 : this.getMaSach().hashCode() );
         result = 37 * result + this.getMaTacGia();
         result = 37 * result + this.getMaNxb();
         result = 37 * result + this.getMaLoai();
         return result;
   }   


}

