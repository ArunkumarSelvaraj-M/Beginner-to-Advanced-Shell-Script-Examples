# Shell-Scripting-Guide
A comprehensive guide to shell scripting from beginner to advanced levels, including examples of variable types, loops, functions, and error handling. Ideal for learning and practical scripting in Unix/Linux environments.

# Linux Command Reference with Examples

This file contains a comprehensive list of commonly used Linux commands with descriptions, usage examples, and common flags.

## a

### `alias`
- **Description**: Create a shortcut for a command.
- **Usage**:
    ```bash
    alias ll='ls -alF'
    ```

### `apt-get`
- **Description**: Install software on Debian/Ubuntu-based systems.
- **Usage**:
    ```bash
    sudo apt-get install package_name
    ```

---

## b

### `basename`
- **Description**: Strip directory and suffix from filenames.
- **Usage**:
    ```bash
    basename /path/to/file.txt .txt
    ```

### `bash`
- **Description**: GNU Bourne-Again Shell.
- **Usage**:
    ```bash
    bash
    ```

---

## c

### `cat`
- **Description**: Concatenate and display files.
- **Usage**:
    ```bash
    cat file1.txt file2.txt
    ```

### `cd`
- **Description**: Change the current directory.
- **Usage**:
    ```bash
    cd /path/to/directory
    ```

---

## d

### `df`
- **Description**: Display disk space usage.
- **Usage**:
    ```bash
    df -h
    ```

### `diff`
- **Description**: Compare files line by line.
- **Usage**:
    ```bash
    diff file1.txt file2.txt
    ```

---

## e

### `echo`
- **Description**: Display a line of text.
- **Usage**:
    ```bash
    echo "Hello, world!"
    ```

### `exit`
- **Description**: Exit the shell.
- **Usage**:
    ```bash
    exit
    ```

---

## f

### `find`
- **Description**: Search for files in a directory hierarchy.
- **Usage**:
    ```bash
    find /path/to/search -name "*.txt"
    ```

---

## g

### `grep`
- **Description**: Search for patterns in text.
- **Usage**:
    ```bash
    grep "search_term" file.txt
    ```

---

## h

### `hostname`
- **Description**: Show or set the system's hostname.
- **Usage**:
    ```bash
    hostname
    ```

---

## i

### `ifconfig`
- **Description**: Configure network interfaces.
- **Usage**:
    ```bash
    ifconfig eth0
    ```

---

## l

### `ls`
- **Description**: List directory contents.
- **Usage**:
    ```bash
    ls -l
    ```

### `ln`
- **Description**: Create links between files.
- **Usage**:
    ```bash
    ln -s target_file link_name
    ```

---

## m

### `mkdir`
- **Description**: Make directories.
- **Usage**:
    ```bash
    mkdir new_directory
    ```

---

## p

### `ps`
- **Description**: Report a snapshot of current processes.
- **Usage**:
    ```bash
    ps aux
    ```

### `ping`
- **Description**: Send ICMP ECHO_REQUEST packets to network hosts.
- **Usage**:
    ```bash
    ping 8.8.8.8
    ```

---

## t

### `tar`
- **Description**: Archive files.
- **Usage**:
    ```bash
    tar -cvf archive.tar directory/
    ```

### `touch`
- **Description**: Change file timestamps or create empty files.
- **Usage**:
    ```bash
    touch newfile.txt
    ```

---

## u

### `uname`
- **Description**: Print system information.
- **Usage**:
    ```bash
    uname -a
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
