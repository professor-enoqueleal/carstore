package br.com.carstore.dao;

import br.com.carstore.model.Car;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CarDAO {

    public void createCar(Car car) {

        String SQL = "INSERT INTO CAR (NAME, COLOR) VALUES (?, ?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("Sucesso ao conectar no banco de dados!");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, car.getName());
            preparedStatement.setString(2, car.getColor());

            preparedStatement.execute();

            System.out.println("Sucesso ao cadastrar o carro no banco de dados");

            connection.close();

        } catch (Exception e ) {

            System.out.println("Falha ao inserir o carro no banco de dados!");

        }

    }

    public List<Car> findAllCars() {

        String SQL = "SELECT * FROM CAR";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            System.out.println("Sucesso ao abrir a conexão com o DB");

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Car> cars = new ArrayList<>();

            while (resultSet.next()) {

                Car car = new Car();

                String id = resultSet.getString("id");
                car.setId(id);

                String name = resultSet.getString("name");
                car.setName(name);

                String color = resultSet.getString("color");
                car.setColor(color);

                cars.add(car);

            }

            System.out.println("Sucesso ao consultar os dados no DB");

            connection.close();

            return cars;


        } catch (Exception e) {

            System.out.println("Erro ao consultar os carros no DB: " + e.getMessage());

        }

        return Collections.emptyList();

    }

    public void deleteById(String id) {

        String SQL = "DELETE CAR WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("Conexão com DB estabelecida com sucesso");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, id);
            preparedStatement.execute();

            connection.close();

            System.out.println("Carro removido com sucesso do db!");

        } catch (Exception e) {

            System.out.println("Falha ao deletar o veículo do db: " + e.getMessage());

        }

    }

    public void updateCar(Car car) {

        String SQL = "UPDATE CAR SET NAME = ?, SET COLOR = ? WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, car.getName());
            preparedStatement.setString(2, car.getId());
            preparedStatement.execute();

            System.out.println("success in update car");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }

    }

}
