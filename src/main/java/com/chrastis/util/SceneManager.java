package com.chrastis.util; // Sesuaikan nama package jika berbeda

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;
import java.io.IOException;
import java.util.function.Consumer;

public class SceneManager {
    private static Stage primaryStage;

    public static void setPrimaryStage(Stage stage) {
        primaryStage = stage;
    }

    public static Stage getPrimaryStage() {
        return primaryStage;
    }

    public static void switchScene(Scene scene) {
        if (primaryStage != null) {
            primaryStage.setScene(scene);
            primaryStage.centerOnScreen();
        }
    }

    /**
     * Method navigasi yang menjaga ukuran jendela tetap sama (maximized).
     */
    public static <T> void navigateTo(String fxmlPath, int fallbackWidth, int fallbackHeight, Consumer<T> controllerInitializer) {
        if (primaryStage == null) return;

        try {
            FXMLLoader loader = new FXMLLoader(SceneManager.class.getResource(fxmlPath));

            // Ambil ukuran dari scene yang sedang aktif, bukan dari parameter.
            Scene currentScene = primaryStage.getScene();
            double currentWidth = (currentScene != null) ? currentScene.getWidth() : fallbackWidth;
            double currentHeight = (currentScene != null) ? currentScene.getHeight() : fallbackHeight;

            // Buat scene baru dengan ukuran yang sama seperti sebelumnya.
            Scene newScene = new Scene(loader.load(), currentWidth, currentHeight);

            // <<--- BARIS INI YANG PERLU DIAKTIFKAN
            // Pastikan path "/css/styles.css" sudah benar.
            newScene.getStylesheets().add(SceneManager.class.getResource("/css/styles.css").toExternalForm());

            if (controllerInitializer != null) {
                controllerInitializer.accept(loader.getController());
            }

            switchScene(newScene);

        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Gagal memuat halaman atau CSS: " + fxmlPath);
        }
    }
}