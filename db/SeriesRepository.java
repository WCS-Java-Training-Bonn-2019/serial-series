public class SeriesRepository {

//	private final static String DB_URL = "jdbc:mysql://localhost:3306/spring_jdbc_quest?serverTimezone=GMT";
	private final static String DB_URL = "jdbc:mysql://localhost:3306/SerialSeries";
	private final static String DB_USER = "seruser";
	private final static String DB_PASSWORD = "Fr+Me+Ra=3";
	

	public List<Serie> findAll() {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			statement = connection.prepareStatement("SELECT * FROM serie;");
			resultSet = statement.executeQuery();

			List<Serie> series = new ArrayList<>();

			while (resultSet.next()) {
				Long id = resultSet.getLong("id");
				String titel = resultSet.getString("titel");
				String picture_url = resultSet.getString("picture_url");
				String description = resultSet.getString("description");
				

				series.add(new Serie(id, titel, picture_url, description, null));
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
	}

}
