# Luminol
[![MIT License](https://img.shields.io/github/license/LuminolMC/Luminol?style=flat-square)](LICENSE)
[![Issues](https://img.shields.io/github/issues/LuminolMC/Luminol?style=flat-square)](https://github.com/LuminolMC/Luminol/issues)
![Commit Activity](https://img.shields.io/github/commit-activity/w/LuminolMC/Luminol?style=flat-square)
![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/LuminolMC/Luminol?style=flat-square)
![GitHub all releases](https://img.shields.io/github/downloads/LuminolMC/Luminol/total?style=flat-square)

<h4>Luminol is a folia fork with many useful optimizations, configurable vanilla features, and more API supports, and it was designed for survival and anarchy servers</h4>

## Features
 - Configurable vanilla features
 - Tpsbar support
 - Linear region file format(from kaiiju)
 - Useful optimizations to improve the performance of single threaded region
 - More API support for plugin development (W.I.P)

## Download
Any versions are available in the [release](https://github.com/LuminolMC/Luminol/releases), also you can build it by yourself through the following steps.

## Build
To build a paperclip jar, you need to run the following command. You can find the jar in build/libs(Note: JDK17 is needed)
 ```shell
 ./gradlew applyPatches && ./gradlew createReobfPaperclipJar
```
## Using API
For gradle:
```kotlin
dependencies {
    compileOnly("me.earthme.luminol:luminol-api:1.20.4-R0.1-SNAPSHOT")
}
 ```
For maven
```xml
<dependency>
  <groupId>me.earthme.luminol</groupId>
  <artifactId>luminol-api</artifactId>
  <version>1.20.4-R0.1-SNAPSHOT</version>
</dependency>
```

## BStats
![bStats](https://bstats.org/signatures/server-implementation/Luminol.svg "bStats")
