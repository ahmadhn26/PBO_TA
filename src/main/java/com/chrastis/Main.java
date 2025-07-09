package com.chrastis;

import com.chrastis.util.SceneManager;
import javafx.application.Application;
import javafx.stage.Stage;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) {
        SceneManager.setPrimaryStage(primaryStage);

        // Panggil navigateTo yang akan kita buat di Langkah 2
        SceneManager.navigateTo("/fxml/loading.fxml", 800, 800, null);

        primaryStage.setMinWidth(800);
        primaryStage.setMinHeight(800);
        primaryStage.setTitle("STAT CREDIT");

        // TAMBAHKAN BARIS INI
        primaryStage.setMaximized(true);

        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}