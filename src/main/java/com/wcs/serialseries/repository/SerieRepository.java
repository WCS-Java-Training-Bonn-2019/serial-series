package com.wcs.serialseries.repository;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.util.JdbcUtils;




public class SerieRepository {
	
	private final static String DB_URL = "jdbc:mysql://localhost:3306/spring_jdbc_quest?serverTimezone=GMT";
    private final static String DB_USER = "h4rryp0tt3r";
    private final static String DB_PASSWORD = "Horcrux4life!";

    public List<Serie> findAll() {

        // TODO : find all series
    	Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        
        List<Serie> series = new ArrayList<>();   
        
        /*
        try {
        	
            connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            statement = connection.prepareStatement(
                    "SELECT * FROM serie;"
            );
            resultSet = statement.executeQuery();

          
            if (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                String picture_url = resultSet.getString("picture_url");
                String description = resultSet.getString("description");
                series.add(new Serie(id, name, picture_url, description, null));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.closeResultSet(resultSet);
            JdbcUtils.closeStatement(statement);
            JdbcUtils.closeConnection(connection);
        }
        
		return null;
        */
        
    	
        series.clear();  //zur Sicherheit
        series.add(new Serie(1));
        series.add(new Serie(2));
        series.add(new Serie(3));

        series.add(new Serie(4));
        series.add(new Serie(5));
        series.add(new Serie(6));
        series.add(new Serie(7));
        series.add(new Serie(8));
        series.add(new Serie(9));
        series.add(new Serie(10));
        series.add(new Serie(11));
        
        return series;
        
        
      
    	
    	
    }
    
    public List<Serie> findSeriesByUserId(Long id) {

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        
        List<Serie> series = new ArrayList<>();
        
        /*
        try {
        	
            connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
			statement = connection.prepareStatement(
                    "SELECT * FROM serie WHERE id = ?;"
            );
            statement.setLong(1, id);
            resultSet = statement.executeQuery();
          
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                String picture_url = resultSet.getString("picture_url");
                String description = resultSet.getString("description");

                
                
                series.add(new Serie(id, name, picture_url, description, null));
            }
                       
            return series;
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.closeResultSet(resultSet);
            JdbcUtils.closeStatement(statement);
            JdbcUtils.closeConnection(connection);
        }
        
		return null;
        */
        
            
            
            series.clear();
    		
    		if (id==1) {
    			//Meine Serien zukünftig natürlich aus DB
    			series.add(new Serie(1));
    			series.add(new Serie(2));
    			series.add(new Serie(3));
    			
    		}
    		else {
    			//Alle Serien
    			series.add(new Serie(1));
    			series.add(new Serie(2));
    			series.add(new Serie(3));

    			series.add(new Serie(4));
    			series.add(new Serie(5));
    			series.add(new Serie(6));
    			series.add(new Serie(7));
    			series.add(new Serie(8));
    			series.add(new Serie(9));
    			series.add(new Serie(10));
    			series.add(new Serie(11));
    	
    		}
    		return series;
                        
        
    }
    
    
        
    
    
    public List<Serie> findNewSeriesByUserId(Long id) {

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        
        List<Serie> series = new ArrayList<>();
        
        /*
        try {
        	
            connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
			statement = connection.prepareStatement(
                    "SELECT * FROM serie WHERE id = ?;"
            );
            statement.setLong(1, id);
            resultSet = statement.executeQuery();
          
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                String picture_url = resultSet.getString("picture_url");
                String description = resultSet.getString("description");

                
                
                series.add(new Serie(id, name, picture_url, description, null));
            }
                       
            return series;
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.closeResultSet(resultSet);
            JdbcUtils.closeStatement(statement);
            JdbcUtils.closeConnection(connection);
        }
        
		return null;
        */
        
            
            
            series.clear();
    		
    		if (id==1) {
    			//Meine Serien zukünftig natürlich aus DB
    			series.add(new Serie(4));
    			series.add(new Serie(5));
    			series.add(new Serie(6));
    			series.add(new Serie(7));
    			series.add(new Serie(8));
    			series.add(new Serie(9));
    			series.add(new Serie(10));
    			series.add(new Serie(11));

    			
    		}
    		else {
    			//Alle Serien
    			series.add(new Serie(12));
    	
    		}
    		return series;
                        
        
    }

    public Serie findSerieBySerieId(Long id) {

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        
        Serie serie;
        
        /*
        try {
        	
            connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
		
 			statement = connection.prepareStatement(
                    "SELECT * FROM serie WHERE id = ?;"
            );
            statement.setLong(1, id);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
            	Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                String picture_url = resultSet.getString("picture_url");
                String description = resultSet.getString("description");
                return new Serie(id, name, picture_url, description);
                
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.closeResultSet(resultSet);
            JdbcUtils.closeStatement(statement);
            JdbcUtils.closeConnection(connection);
        }
        
		return null;
        */
        
            
            
     // Temporär: Befüllung des models mit den richtigen Daten
        
        return new Serie(id);
     		
     		
                        
        
    }

	public void deleteSeriesByUserIdAndSerieId(Long idUser, Long idSerie) {
		
		
		//Löschen *//
		System.out.println("Löschen von folgendem Eintrag -- User: " + idUser + " Serie: " + idSerie);
		
		return;
	}

	public void newSerieForUser(Long idUser, Long idSerie) {
		
		
		//Hinzufügen zu meine Serien *//
		System.out.println("Hinzufügen von folgender Serie -- User: " + idUser + " Serie: " + idSerie);

		return;
	}


}
