# **tv_ubuntu**

Some ubuntu configurations, features, commands, installations script for applications and tricks

## **Search process using port and kill it**

``` console
$ lsof -i :4000
COMMAND  PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
node    6635  mkd   13u  IPv6 577319      0t0  TCP *:4000 (LISTEN)

$ kill 6635
```

## **Enable javascript intellisense on vscode**

Enable (set to true) the javascript.implicitProjectConfig.checkJs option:

``` console
  // Enable/disable semantic checking of JavaScript files. Existing jsconfig.json or tsconfig.json files override this setting. Requires TypeScript >=2.3.1.
  "javascript.implicitProjectConfig.checkJs": true,
```

## Give root access to display (08/01/2018)

By default 17.10 does not allow root to access your display.

Error: gtk warning cannot open display :0.0

```javascript
xhost +si:localuser:root
```

## Git, Remove file from commit

```console
git rebase -i <commit_to_change>^
git checkout HEAD^ <file_to_remove>
git commit --amend
git rebase --continue
```