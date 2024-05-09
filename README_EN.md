<img src="./public/image/Luminol_5.png" alt="Logo" align="right" width="250">

# Luminol
<h4>Luminol is a Folia fork with many useful optimizations, configurable vanilla features, and more API supports, and it was designed for survival and anarchy servers</h4>

[![MIT License](https://img.shields.io/github/license/LuminolMC/Luminol?style=flat-square)](LICENSE)
[![Issues](https://img.shields.io/github/issues/LuminolMC/Luminol?style=flat-square)](https://github.com/LuminolMC/Luminol/issues)
![Commit Activity](https://img.shields.io/github/commit-activity/w/LuminolMC/Luminol?style=flat-square)
![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/LuminolMC/Luminol?style=flat-square)
![GitHub all releases](https://img.shields.io/github/downloads/LuminolMC/Luminol/total?style=flat-square)

**English** | [中文](./README.md)

## Features
- Configurable vanilla features
- Tpsbar support
- Linear region file format(from kaiiju)
- Useful optimizations to improve the performance of single threaded region
- More API support for plugin development (W.I.P)

## Download
Any versions are available in the [release](https://github.com/LuminolMC/Luminol/releases), also you can build it by yourself through [the following steps](./README_EN.md#build).

## Build
To build a paperclip jar, you need to run the following command. You can find the jar in build/libs(Note: JDK21 is needed)

 ```shell
 ./gradlew applyPatches && ./gradlew createMojmapPaperclipJar
```

## Using API
For gradle:

```kotlin
dependencies {
    compileOnly("me.earthme.luminol:luminol-api:1.20.6-R0.1-SNAPSHOT")
}
 ```

For maven

```xml
<dependency>
  <groupId>me.earthme.luminol</groupId>
  <artifactId>luminol-api</artifactId>
  <version>1.20.6-R0.1-SNAPSHOT</version>
</dependency>
```

## Contact
> If you are interested in this project or have any issue, feel free to ask us.

QQ Group: [368632360](http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=MfosKhcDd8Fdxn1MREuZ8Krbf9T6jiBC&authKey=3cm6qdHohON3gHnuD63FK4k07fIbrWnY4hdyq8OmELsfjMVP1kbFTJY9mRyM2Rkj&noverify=0&group_code=368632360) | QQ Channel: [Click To Join](https://pd.qq.com/s/eq9krf9j) | Telegram: [Click To Join](https://t.me/LuminolMC) | Discord: [Click To Join](https://discord.gg/Qd7m3V6eDx)

> [!WARNING]
> **This project is not related to Leaves.Do not report any bugs about protocol support to leaves because the protocol supports are already refactored.**

## About Issue
When you meet any problems, just ask us, we will do our best to solve it, but remember to state your problem clear and provide enough logs etc.</br>

## Pull Requests
See [Contributing](./docs/CONTRIBUTING_EN.md)

## BStats
![bStats](https://bstats.org/signatures/server-implementation/Luminol.svg "bStats")

## Please ⭐star us!
<a href="https://star-history.com/#LuminolMC/Luminol&LuminolMC/LightingLuminol&Date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=LuminolMC/Luminol%2CLuminolMC/LightingLuminol&type=Date&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=LuminolMC/Luminol%2CLuminolMC/LightingLuminol&type=Date" />
    <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=LuminolMC/Luminol%2CLuminolMC/LightingLuminol&type=Date" />
  </picture>
</a>
