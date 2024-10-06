# Shell-Scripting-Guide
A comprehensive guide to shell scripting from beginner to advanced levels, including examples of variable types, loops, functions, and error handling. Ideal for learning and practical scripting in Unix/Linux environments.

# Linux Command Reference with Examples and Outputs

This file contains a comprehensive list of commonly used Linux commands with descriptions, usage examples, and common flags.

## a

### `alias`
- **Description**: Create a shortcut for a command.
- **Usage**:
    ```bash
    alias ll='ls -alF'
    ```
- **Example**:
    ```bash
    ll
    ```
- **Expected Output**:
    ```
    total 12
    drwxr-xr-x 3 user user 4096 Jan 01 12:00 dir1
    drwxr-xr-x 2 user user 4096 Jan 01 12:00 dir2
    -rw-r--r-- 1 user user    0 Jan 01 12:00 file1.txt
    ```

### `apt-get`
- **Description**: Install software on Debian/Ubuntu-based systems.
- **Usage**:
    ```bash
    sudo apt-get install package_name
    ```
- **Example**:
    ```bash
    sudo apt-get install curl
    ```
- **Expected Output**:
    ```
    Reading package lists... Done
    Building dependency tree
    Reading state information... Done
    The following additional packages will be installed:
      libcurl4 libcurl4-gnutls-dev
    ```

---

## b

### `basename`
- **Description**: Strip directory and suffix from filenames.
- **Usage**:
    ```bash
    basename /path/to/file.txt .txt
    ```
- **Example**:
    ```bash
    basename /usr/local/bin/script.sh .sh
    ```
- **Expected Output**:
    ```
    script
    ```

### `bash`
- **Description**: GNU Bourne-Again Shell.
- **Usage**:
    ```bash
    bash
    ```
- **Example**:
    ```bash
    bash
    ```
- **Expected Output**:
    (Starts a new bash shell)

---

## c

### `cat`
- **Description**: Concatenate and display files.
- **Usage**:
    ```bash
    cat file1.txt file2.txt
    ```
- **Example**:
    ```bash
    cat myfile.txt
    ```
- **Expected Output**:
    ```
    This is the first line of the file.
    This is the second line of the file.
    ```

### `cd`
- **Description**: Change the current directory.
- **Usage**:
    ```bash
    cd /path/to/directory
    ```
- **Example**:
    ```bash
    cd /usr/local
    ```
- **Expected Output**:
    (No output, changes directory)

---

## d

### `df`
- **Description**: Display disk space usage.
- **Usage**:
    ```bash
    df -h
    ```
- **Example**:
    ```bash
    df -h
    ```
- **Expected Output**:
    ```
    Filesystem      Size  Used Avail Use% Mounted on
    /dev/sda1       100G   70G   25G  75% /
    ```

### `diff`
- **Description**: Compare files line by line.
- **Usage**:
    ```bash
    diff file1.txt file2.txt
    ```
- **Example**:
    ```bash
    diff file1.txt file2.txt
    ```
- **Expected Output**:
    ```
    1c1
    < This is the first line of file1.
    ---
    > This is the first line of file2.
    ```

---

## e

### `echo`
- **Description**: Display a line of text.
- **Usage**:
    ```bash
    echo "Hello, world!"
    ```
- **Example**:
    ```bash
    echo "Hello, world!"
    ```
- **Expected Output**:
    ```
    Hello, world!
    ```

### `exit`
- **Description**: Exit the shell.
- **Usage**:
    ```bash
    exit
    ```
- **Example**:
    ```bash
    exit
    ```
- **Expected Output**:
    (No output, exits the shell)

---

## f

### `find`
- **Description**: Search for files in a directory hierarchy.
- **Usage**:
    ```bash
    find /path/to/search -name "*.txt"
    ```
- **Example**:
    ```bash
    find . -name "*.txt"
    ```
- **Expected Output**:
    ```
    ./file1.txt
    ./documents/file2.txt
    ```

---

## g

### `grep`
- **Description**: Search for patterns in text.
- **Usage**:
    ```bash
    grep "search_term" file.txt
    ```
- **Example**:
    ```bash
    grep "Hello" greetings.txt
    ```
- **Expected Output**:
    ```
    Hello, how are you?
    ```

---

## h

### `hostname`
- **Description**: Show or set the system's hostname.
- **Usage**:
    ```bash
    hostname
    ```
- **Example**:
    ```bash
    hostname
    ```
- **Expected Output**:
    ```
    my-computer
    ```

---

## i

### `ifconfig`
- **Description**: Configure network interfaces.
- **Usage**:
    ```bash
    ifconfig eth0
    ```
- **Example**:
    ```bash
    ifconfig
    ```
- **Expected Output**:
    ```
    eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
            inet 192.168.1.100  netmask 255.255.255.0  broadcast 192.168.1.255
    ```

---

## l

### `ls`
- **Description**: List directory contents.
- **Usage**:
    ```bash
    ls -l
    ```
- **Example**:
    ```bash
    ls -l /home/user
    ```
- **Expected Output**:
    ```
    total 8
    drwxr-xr-x 2 user user 4096 Jan 01 12:00 dir1
    -rw-r--r-- 1 user user  124 Jan 01 12:00 file1.txt
    ```

### `ln`
- **Description**: Create links between files.
- **Usage**:
    ```bash
    ln -s target_file link_name
    ```
- **Example**:
    ```bash
    ln -s file.txt link_to_file.txt
    ```
- **Expected Output**:
    (No output, creates a symbolic link)

---

## m

### `mkdir`
- **Description**: Make directories.
- **Usage**:
    ```bash
    mkdir new_directory
    ```
- **Example**:
    ```bash
    mkdir /tmp/new_folder
    ```
- **Expected Output**:
    (No output, creates a new directory)

---

## p

### `ps`
- **Description**: Report a snapshot of current processes.
- **Usage**:
    ```bash
    ps aux
    ```
- **Example**:
    ```bash
    ps aux | grep bash
    ```
- **Expected Output**:
    ```
    user       1234  0.0  0.1 123456  1234 ?        S    12:00   0:00 /bin/bash
    ```

### `ping`
- **Description**: Send ICMP ECHO_REQUEST packets to network hosts.
- **Usage**:
    ```bash
    ping 8.8.8.8
    ```
- **Example**:
    ```bash
    ping -c 4 google.com
    ```
- **Expected Output**:
    ```
    PING google.com (172.217.10.46) 56(84) bytes of data.
    64 bytes from 172.217.10.46: icmp_seq=1 ttl=117 time=11.8 ms
    ```

---

## q

### quota
- **Description**: Display disk usage and limits.
- **Usage**:
    ```bash
    quota -u username
    ```
---

## r
### rmdir
- **Description**: Remove empty directories.
- **Usage**:
    ```bash
    rmdir directory_name
    ```

### rsync
- **Description**: Synchronize files and directories between two locations.
- **Usage**:
    ```bash
    rsync -av source_directory/ destination_directory/
    ```

---

## s

### shutdown

- **Description**: Halt, power off, or reboot the machine.
- **Usage**:
    ```bash
    shutdown -h now
    ```

- **Example**:
    ```bash
    shutdown -r +5
    ```

Reboots the machine in 5 minutes.

### sleep

- **Description**: Delay for a specified amount of time.
- **Usage**:
    ```bash
    sleep 5
    ```

- **Example**:
    ```bash
    sleep 10 && echo "Done!"
    ```

Sleeps for 10 seconds and then outputs "Done!".

### sort

- **Description**: Sort lines of text files.
- **Usage**:
    ```bash
    sort file.txt
    ```

- **Example**:
    ```bash
    sort -r file.txt
    ```

Sorts the file in reverse order.

### ssh

- **Description**: Secure Shell to log into a remote machine.
- **Usage**:
    ```bash
    ssh user@hostname
    ```

---


## t

### `tar`
- **Description**: Archive files.
- **Usage**:
    ```bash
    tar -cvf archive.tar directory/
    ```
- **Example**:
    ```bash
    tar -cvf backup.tar /home/user
    ```
- **Expected Output**:
    ```
    home/user/
    home/user/file1.txt
    home/user/file2.txt
    ```

### `touch`
- **Description**: Change file timestamps or create empty files.
- **Usage**:
    ```bash
    touch newfile.txt
    ```
- **Example**:
    ```bash
    touch myfile.txt
    ```
- **Expected Output**:
    (No output, creates an empty file)

---

## u

### `uname`
- **Description**: Print system information.
- **Usage**:
    ```bash
    uname -a
    ```
- **Example**:
    ```bash
    uname -r
    ```
- **Expected Output**:
    ```
    5.4.0-42-generic
    ```
### `uptime`
- **Description**: Tell how long the system has been running.
- **Usage**:
    ```bash
    uptime
    ```

---

## v

### `vim`
- **Description**: Open the Vim text editor.
- **Usage**:
    ```bash
    vim file.txt
    ```

### `vmstat`
- **Description**: Report virtual memory statistics.
- **Usage**:
    ```bash
    vmstat
    ```

---

## w

### `wget`
- **Description**: Download files from the web.
- **Usage**:
    ```bash
    wget http://example.com/file.zip
    ```

---

## x

### `xargs`
- **Description**: Build and execute command lines from standard input.
- **Usage**:
    ```bash
    echo "file1 file2 file3" | xargs rm
    ```

---

## z

### `zip`
- **Description**: Package and compress files.
- **Usage**:
    ```bash
    zip archive.zip file1 file2
    ```

### `zcat`
- **Description**: View the contents of a compressed file.
- **Usage**:
    ```bash
    zcat file.gz
    ```

---
