package org.iii.ee100.sample.music;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class MusicDao{
	private static final String INSERT_STMT = "INSERT INTO music (title, pname, genre, clicks, rdate) VALUES (?,?,?,?,?)";
	private static final String UPDATE_STMT ="UPDATE music SET title=?, pname=?, genre=?, clicks=?, rdate=? WHERE id=?";
	private static final String DELETE = "DELETE from music WHERE id=?";
	private static final String FIND_ALL_STMT = "SELECT id, title, pname, genre, clicks, rdate FROM music ORDER BY id";
	private static final String FIND_BY_ID = "SELECT id, title, pname, genre, clicks, rdate FROM music WHERE id=?";
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	
	private Connection getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		String user ="postgres";
		String password = "postgres";
		
		//Connection conn = DriverManager.getConnection(connUrl, user, password);
		HikariConfig config = new HikariConfig();
		config.setJdbcUrl(connUrl);
		config.setUsername(user);
		config.setPassword(password);
		config.addDataSourceProperty("cachePrepStmts", "true");
		config.addDataSourceProperty("prepStmtCacheSize", "250");
		config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");

		HikariDataSource ds = new HikariDataSource(config);

		return ds.getConnection();
	}
	
	//select all
		public List<Music> findAll(){
			
			Music music = null;
			
			List<Music> mlist = new ArrayList<Music>();
			ResultSet rs = null;
			
			try {
				
				while(rs.next()) {		
				music = new Music();
				
				music.setId(rs.getLong("id"));
				music.setTitle(rs.getString("title"));
				music.setPname(rs.getString("pname"));
				music.setGenre(rs.getString("genre"));
				music.setClicks(rs.getLong("clicks"));
				music.setRdate(rs.getDate("rdate"));
				
				mlist.add(music);
				}

			}catch(SQLException e) {
				e.printStackTrace();
			
			}
			return mlist;
		}   //end of FindAll
	
	//insert
	public void insert(Music music) {
		try {
			PreparedStatement pstmt = conn.prepareStatement(INSERT_STMT, Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, music.getTitle());
			pstmt.setString(2, music.getPname());
			pstmt.setString(3, music.getGenre());
			pstmt.setLong(4, music.getClicks());
			pstmt.setDate(5, music.getRdate());
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if(rs.next()) {
				music.setId(rs.getLong(1));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	} //end of insert

    //update
	public void update(Music music) {
		try {
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STMT);
			pstmt.setString(1, music.getTitle());
			pstmt.setString(2, music.getPname());
			pstmt.setString(3, music.getGenre());
			pstmt.setLong(4, music.getClicks());
			pstmt.setDate(5, music.getRdate());
			pstmt.setLong(6, music.getId());
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if(rs.next()) {
				music.setId(rs.getLong(1));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		
		}
	}  //end of update

	//delete
	public void delete(Long id) {
		try {
			PreparedStatement pstmt = conn.prepareStatement(DELETE);

			pstmt.setLong(1, id);
			pstmt.executeUpdate();


		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}  //end of delete
	
	//findById
	public Music findById(Long id) {
		Music music = null;
		ResultSet rs = null;
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(FIND_BY_ID);
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				music = new Music();
			music.setId(rs.getLong("id"));
			music.setTitle(rs.getString("title"));
			music.setPname(rs.getString("pname"));
			music.setGenre(rs.getString("genre"));
			music.setClicks(rs.getLong("clicks"));
			music.setRdate(rs.getDate("rdate"));			
			
			}
		}catch(SQLException e) {
			e.printStackTrace();

		}
		return music;
	}  //end of findById

	public void closeConn() {
	try {
		if(pstmt != null) {
			pstmt.close();					
		}
		if (conn != null) {
			conn.close();
		}
	}catch(SQLException e1) {
		e1.printStackTrace();
	}
}

}
	

