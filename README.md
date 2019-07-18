# Install-Python-on-Raspbian
![](https://img.shields.io/badge/language-bash-orange.svg)
![](https://img.shields.io/badge/version-0.7-black.svg)

### 环境
* 树莓派 Raspberry Pi
* 2019-04-08-raspbian-stretch-lite

### 功能
* 安装 Git

* 安装 Python 3.7.3

* 删除自带的 Python 2.7 和 3.5

* 安装 chromium-browser、chromium-chromedriver

* 安装 Python 第三方模块
  - [x] scrapy
    - [x] scrapy-deltafetch
  - [x] requests
  - [x] pycryptodome
  - [x] fake-useragent
  - [x] Pillow
  - [x] selenium
  - [x] rsa
  - [x] Crypto

* 中文化

### 运行（pi）
```
bash <(curl -L -s https://git.io/fjVM9)
```

### 常见问题
* 默认使用用户 `pi` 运行此脚本。
* 保持网络通畅，有 `科学上网` 环境的建议使用。部分组件下载偏慢。
* ~~Python 3.7.3 编译使用 `--enable-optimizations` 参数，因此颇为耗时。~~

### TODO
- [ ] 测试环境 2019-07-10-raspbian-buster-lite
