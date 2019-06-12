# linux

## commands
```
// find permission all folder in path; if any of folders don't have read permission then user cannot read  file.txt 
namei -l /home/sam/work/file.txt

# find process using port
lsof -n -i -P | grep LISTEN | grep <port-no>

# find linux version
cat /etc/os-release
lsb_release -a
hostnamectl

# find shell
echo $0

# permission to directory recursively
chmod -R 755 dirname
```

## ps
```
ps                   // display processes for current shell
ps -A or ps -e       // every active process in unix/linux format
ps au or ps aux      // all processes in BSD format
ps -ef or ps -eF     // every active process in full format
ps -x                // display current user running process
ps -fu userx         // display processes of userx 
```

## curl
```
curl -v -o output.tar http://artifactory.com/xyz.tar
```

## awk
```
echo "hello world" | awk "{print $2}"  // prints world
```

