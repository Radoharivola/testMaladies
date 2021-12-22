package pharmacie.app.models;
import java.sql.*;
public class Log{
    Connection con;
    public Log() throws Exception{
        try{
            Class.forName("org.postgresql.Driver");
            String url="jdbc:postgresql://ec2-34-204-127-36.compute-1.amazonaws.com:5432/d3onefugqirusr";
	   		String user="ehgkcdrgsuatzs";
	   		String password="31ae3cc9a4091118d062b5065d1aa6613fae8fb7e31f7405a81477e053fd4b4f";
	   		con=DriverManager.getConnection(url, user, password);
            con.setAutoCommit(false);
        }
        catch(Exception e){
            e.printStackTrace();
            throw e;
        }
    }
    public void close() throws Exception{
        try{
            con.close();
        }catch(Exception e){
            e.printStackTrace();
            throw e;
        }
    }
    public Connection getCon(){
        return con;
    }
}