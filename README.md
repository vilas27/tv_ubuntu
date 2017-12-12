# **tv_ubuntu**
Some ubuntu configurations, features, commands and tricks

## **Search process using port and kill it**
```
$ lsof -i :4000
COMMAND  PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
node    6635  mkd   13u  IPv6 577319      0t0  TCP *:4000 (LISTEN)

$ kill 6635
```
## **Enable javascript intellisense on vscode**

Enable (set to true) the javascript.implicitProjectConfig.checkJs option:

```
  // Enable/disable semantic checking of JavaScript files. Existing jsconfig.json or tsconfig.json files override this setting. Requires TypeScript >=2.3.1.
  "javascript.implicitProjectConfig.checkJs": true,
```

## **Install g++ 2017 gcc-7 g++17 (11/12/2017)**

Ubuntu 17.10

Has GCC 7.2 it by default! https://packages.ubuntu.com/artful/gcc
```
$ gcc --version
gcc (Ubuntu 7.2.0-8ubuntu3) 7.2.0
```

Ubuntu 17.04

An official test PPA:

```
$ sudo add-apt-repository ppa:ubuntu-toolchain-r/test
$ sudo apt-get update
$ sudo apt-get install gcc-7
$ gcc-7 --version
```

Not available in 16.10.

GCC 7 was release in May 2017, so too late for 17.04 main release.
