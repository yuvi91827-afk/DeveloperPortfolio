# Linux System Profile

## 1. System Specifications

| Component | Specification |
|---|---|
| CPU Model | Intel(R) Core(TM) 5 210H |
| CPU Cores | 6 Physical Cores |
| Logical CPUs | 12 Threads |
| Total RAM | 7.6 GiB |
| Used RAM | 511 MiB (approx.) |
| Available RAM | 7.1 GiB |
| Swap Memory | 2.0 GiB |
| Primary Storage | 1 TB Virtual Disk |
| Storage Type | Virtual Disk (physical SSD/HDD type not identified in WSL2) |
| Operating System | Ubuntu 26.04.1 LTS |
| Kernel Version | 6.18.58.1-microsoft-standard-WSL2 |
| Architecture | x86_64 |
| Environment | Windows Subsystem for Linux 2 (WSL2) |

## 2. Binary Number Representation

### A. Decimal 75 to Binary

To convert decimal 75 into binary, repeatedly divide the number by 2 and record the remainders.

| Step | Division | Quotient | Remainder |
|---|---|---|---|
| 1 | 75 / 2 | 37 | 1 |
| 2 | 37 / 2 | 18 | 1 |
| 3 | 18 / 2 | 9 | 0 |
| 4 | 9 / 2 | 4 | 1 |
| 5 | 4 / 2 | 2 | 0 |
| 6 | 2 / 2 | 1 | 0 |
| 7 | 1 / 2 | 0 | 1 |

Reading the remainders from bottom to top:

**75 (Decimal) = 1001011 (Binary)**

### B. Binary 110101 to Decimal

Using the positional weight method:

Binary number = 110101

Each digit is multiplied by its corresponding power of 2.

= 1 × 2^5 + 1 × 2^4 + 0 × 2^3
  + 1 × 2^2 + 0 × 2^1 + 1 × 2^0

= 32 + 16 + 0 + 4 + 0 + 1

= 53

**110101 (Binary) = 53 (Decimal)**

### C. Why Do Computers Use Binary?

Computers use binary internally because electronic circuits can easily and reliably represent two states, ON (1) and OFF (0), making binary suitable for processing and storing digital information.

---

## 3. Linux Commands Used

The following Linux commands were used to collect system information:

1. `lscpu` - Displays CPU architecture and processor information.
2. `free -h` - Displays RAM and swap memory usage.
3. `lsblk` - Lists available block devices and storage information.
4. `uname -a` - Displays kernel and system information.
5. `df -h` - Displays filesystem disk usage.
6. `ps aux` - Displays currently running processes.
7. `ls -la ~` - Lists home directory contents with permissions.

## 4. Conclusion

This practical helped me understand Linux system information commands, hardware specifications, memory management, storage information, and binary number conversion.
