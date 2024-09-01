# Why168 Homebrew Local

> https://brew.sh/

## install

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```bash
brew tap why168/local
```

```bash
brew why168/local/gradle@4
```



## directory
安装一些过时的库

```tex
├── Formula
│   ├── go@1.14.rb    go1.14.7
│   ├── go@1.15.rb    go1.15.8
│   ├── go@1.16.rb    go1.16.6
│   ├── go@1.17.rb    go1.17.8
│   ├── go@1.19.rb    go1.19.6
│   ├── gradle@4.rb    gradle-4.10.2
│   └── gradle@5.rb    gradle-5.6.4
│   └── gradle@6.rb    gradle-6.8.3
│   └── gradle@7.rb    gradle-7.6
│   ├── mysql-client@5.7.rb
│   ├── mysql@5.6.rb
│   ├── mysql@5.7.rb
│   ├── openssl@1.0.rb
│   ├── php@7.rb    php-7.4.13
│   ├── python@2.7.rb
│   ├── python@3.6.rb
│   ├── python@3.7.rb
│   ├── redis@4.rb    redis-4.0.11
│   ├── redis@5.rb    redis-5.0.9
│   └── redis@6.rb    redis-6.2.6
└── README.md
```



## extract

```bash
brew extract --version=4 gradle why168/homebrew-local
```



## homebrew/core

Formula Git 历史版本

```bash
git log -p -- Formula/gradle.rb | grep -e ^commit -e 'url "http'
```



## other library

1. java jdk :https://www.azul.com/downloads/




## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

