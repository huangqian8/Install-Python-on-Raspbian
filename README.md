# Install-Python-on-Raspbian
![](https://img.shields.io/badge/language-bash-orange.svg)
![](https://img.shields.io/badge/version-0.2-black.svg)

### 环境
* 树莓派 Raspberry Pi
* 2019-04-08-raspbian-stretch-lite

### 功能
* 安装 Python 3.7.3

* 安装 Python 第三方模块
  - [x] scrapy
    - [x] scrapy-deltafetch
  - [x] requests
  - [x] pycryptodome
  - [x] fake-useragent
  - [x] lxml
  - [x] Pillow
  - [x] selenium
  - [x] rsa
  - [x] Crypto

* 删除自带的 Python 2.7 和 3.5

* 中文化

### 运行（root）
```
bash <(curl -L -s https://git.io/fjVM9)
```

### 常见问题
* 请使用 root 权限用户运行此脚本。
* Python 3.7.3 编译使用 `--enable-optimizations` 参数，因此颇为耗时。
