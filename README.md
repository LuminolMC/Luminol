<img src="./public/image/Luminol_5.png" alt="Logo" align="right" width="250">

# Luminol
<h4>Luminol 是一个基于Folia的分支，具有许多有用的优化、可配置的原版特性和更多的API支持，它专为生存和无政府服务器设计</h4>

[![MIT License](https://img.shields.io/github/license/LuminolMC/Luminol?style=flat-square)](LICENSE)
[![Issues](https://img.shields.io/github/issues/LuminolMC/Luminol?style=flat-square)](https://github.com/LuminolMC/Luminol/issues)
![Commit Activity](https://img.shields.io/github/commit-activity/w/LuminolMC/Luminol?style=flat-square)
![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/LuminolMC/Luminol?style=flat-square)
![GitHub all releases](https://img.shields.io/github/downloads/LuminolMC/Luminol/total?style=flat-square)

[English](./README_EN.md) | **中文**

## 特性
- 可配置的原版特性
- Tpsbar 支持
- 对单线程区域性能的优化
- 更多的插件开发API支持（进行中）

## 下载
任何版本都可以在 [Release](https://github.com/LuminolMC/Luminol/releases) 中找到，你也可以通过[以下步骤](./README.md#构建)自己构建。

## 构建
要构建一个paperclip jar，你需要运行以下命令。你可以在build/libs中找到jar（注意：需要`JDK21`）

 ```shell
 ./gradlew applyPatches && ./gradlew createMojmapPaperclipJar
```

## 使用API
使用 Gradle:

```kotlin
dependencies {
    compileOnly("me.earthme.luminol:luminol-api:1.21-R0.1-SNAPSHOT")
}
 ```

使用 Maven

```xml
<dependency>
  <groupId>me.earthme.luminol</groupId>
  <artifactId>luminol-api</artifactId>
  <version>1.21-R0.1-SNAPSHOT</version>
</dependency>
```

## 联系方式
> 如果您对这个项目感兴趣或有任何问题，请随时向我们提问。

**QQ群: [368632360](http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=MfosKhcDd8Fdxn1MREuZ8Krbf9T6jiBC&authKey=3cm6qdHohON3gHnuD63FK4k07fIbrWnY4hdyq8OmELsfjMVP1kbFTJY9mRyM2Rkj&noverify=0&group_code=368632360)** | QQ频道: [点击加入](https://pd.qq.com/s/eq9krf9j) | Telegram: [点击加入](https://t.me/LuminolMC) | Discord: [点击加入](https://discord.gg/Qd7m3V6eDx)


## 关于 Issue
当您遇到任何问题时，请向我们提问，我们将尽力解决，但请记得清楚地描述您的问题并提供足够的日志等信息。

## 贡献代码
可[查看 Contributing](./docs/CONTRIBUTING.md)

## BStats
![bStats](https://bstats.org/signatures/server-implementation/Luminol.svg "bStats")

## 请给我们一个 ⭐Star！
> 你的每一个免费的 ⭐Star 就是我们每一个前进的动力。

<a href="https://star-history.com/#LuminolMC/Luminol&LuminolMC/LightingLuminol&Date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=LuminolMC/Luminol%2CLuminolMC/LightingLuminol&type=Date&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=LuminolMC/Luminol%2CLuminolMC/LightingLuminol&type=Date" />
    <img alt="Star历史表" src="https://api.star-history.com/svg?repos=LuminolMC/Luminol%2CLuminolMC/LightingLuminol&type=Date" />
  </picture>
</a>