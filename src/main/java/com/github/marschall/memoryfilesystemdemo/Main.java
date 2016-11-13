package com.github.marschall.memoryfilesystemdemo;

import java.io.IOException;
import java.net.URI;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import static java.util.Collections.emptyMap;

public class Main {

    public static void main(String[] args) throws IOException {
        try (FileSystem fileSystem = FileSystems.newFileSystem(URI.create("memory:aname"), emptyMap())) {
            Path root = fileSystem.getPath("/");
            System.out.println(root);
        }
    }

}
