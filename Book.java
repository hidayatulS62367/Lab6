package lab6.com;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author 
 */
public class Book {
    
    private String stuno;
    private String stuname;
    private String stuprogram;
    
    String valid, invalid;

    public String getStuno() {
        
        Pattern pt = Pattern.compile("[A-Z0-9]*");
        Matcher mt = pt.matcher(stuno);
        boolean bl=mt.matches();
        
        if(bl==true){
            valid = stuno;
        }else{
            valid = invalid;
        }
        return valid;
    }

    public void setStuno(String stuno) {
        this.stuno = stuno;
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }
public String getStuprogram() {
        return stuprogram;
    }

    public void setStuprogram(String stuprogram) {
        this.stuprogram = stuprogram;
    }
    
    
}
