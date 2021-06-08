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
grep -r --exclude-dir={dir1,dir2} keyword .

# find total size of current directory
du -h                  // size of files human readable format
du -ch                 // grand total in human readable format
du -ch -d 1            // sub-folder sizes in current folder 1 is max-depth size
du -ch -d 1 | sort -h  // sort by human numeric format

# find examples
find . -maxdepth 1 -type l -ls   // all symbolic links in current directory
find . -name "*foo*"             // find all files which have foo in name recursively
find . -name "*boo*" -exec md5sum '{}' + > checklist.chk  // find md5 sum of each file in directory

# sort 
sort -h                // human numeric format

# sum of size of files
# if list is long there can be more than one total so awk and sum required
find /some/dir -type f -name *.txt | xargs -r du -ch | grep total | cur -f1 | awk '{total += $1}; END {print total}'

# sort
sort file.txt > file.sorted

# compare two sorted files (shapeshed.com/unix-comm)
comm file1.sorted file2.sorted
comm -i file1.sorted file2.sorted  // case-insensitive
> file1-unique-value-col  file2-unique-value-col common-value-col

comm -1 file1.sorted file2.sorted // supress 1st col
comm -2 file1.sorted file2.sorted // supress 2nd col
comm -3 file1.sorted file2.sorted // supress 3rd col
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
echo "hello world" | awk '{print $2" "$1}'  // prints world hello
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

## jar
```
jar -tf foo.jar    // see contents of jar file
```