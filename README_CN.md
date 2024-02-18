<img src="./public/image/Luminol_5.png" alt="Logo" align="right" width="250">

# Luminol

<h4>Luminol 是一个基于folia的分支，具有许多有用的优化、可配置的原版特性和更多的API支持，它专为生存和无政府服务器设计</h4>

[![MIT License](https://img.shields.io/github/license/LuminolMC/Luminol?style=flat-square)](LICENSE)
[![Issues](https://img.shields.io/github/issues/LuminolMC/Luminol?style=flat-square)](https://github.com/LuminolMC/Luminol/issues)
![Commit Activity](https://img.shields.io/github/commit-activity/w/LuminolMC/Luminol?style=flat-square)
![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/LuminolMC/Luminol?style=flat-square)
![GitHub all releases](https://img.shields.io/github/downloads/LuminolMC/Luminol/total?style=flat-square)

[English](./README.md) | **中文**

## 特性
- 可配置的原版特性
- Tpsbar 支持
- 线性区域文件格式 (from kaiiju)
- 对单线程区域性能的优化
- 更多的插件开发API支持（进行中）

## 下载
任何版本都可以在 [release](https://github.com/LuminolMC/Luminol/releases), 中找到，您也可以通过[以下步骤](./README_CN.md#构建)自己构建。

## 构建
要构建一个paperclip jar，你需要运行以下命令。你可以在build/libs中找到jar（注意：需要JDK17）
 ```shell
 ./gradlew applyPatches && ./gradlew createReobfPaperclipJar
```
## 使用API
使用 Gradle:
```kotlin
dependencies {
    compileOnly("me.earthme.luminol:luminol-api:1.20.4-R0.1-SNAPSHOT")
}
 ```
使用 Maven
```xml
<dependency>
  <groupId>me.earthme.luminol</groupId>
  <artifactId>luminol-api</artifactId>
  <version>1.20.4-R0.1-SNAPSHOT</version>
</dependency>
```

## 联系方式
> 如果您对这个项目感兴趣或有任何问题，请随时向我们提问。

QQ群：368632360

## 关于 Issue
当您遇到任何问题时，请向我们提问，我们将尽力解决，但请记得清楚地描述您的问题并提供足够的日志等信息。

## 贡献代码
可查看 [Contributing](./docs/CONTRIBUTING_cn.md)

## BStats
![bStats](https://bstats.org/signatures/server-implementation/Luminol.svg "bStats")