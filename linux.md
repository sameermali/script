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

# grep for keyword recursively in sub-directories
grep -r keyword .
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

## sed
```
// replace text in input file and create output file
sed '/s/search-string/replace-string/g' input.txt > output.txt
s: substitute
g: all matching occurances (not just first one)

// replace text in-place in file
sed -i '/s/search-string/replace-string/g' input.txt > output.txt
i: in-place replacement

// using variables in sed
sed -i "/s/${search-string}/${replace-string}/g" input.txt > output.txt
```
