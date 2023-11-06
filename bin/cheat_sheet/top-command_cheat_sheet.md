
---

**Top Command**

Find out what's running on your Linux, monitor resource contention, CPU, memory usage.

- The `top` command updates the screen every 3 seconds.

**Top Command Divided into Two Categories:**

**1. Upper Section - Statistics or Resource Usage**

- First line: User-related information, Load average and uptime (Uptime, logged in users, load average for the past 1 minute, 5 minutes, and 15 minutes):
  ```bash
  (top - 11:58:20 up  2:19,  2 users,  load average: 0.84, 1.35, 1.12)
  ```
  - In the load average, if all the numbers (e.g., load average: 0.84, 1.35, 1.12) become 7, it means you are using 100% CPU, and it indicates you have 7 CPUs in your system.
  - 100% busy = the number of CPUs you have.

- Logged in users:
  ```bash
  $ w
  ```

- Load average (how busy your system is):
  ```bash
  $ uptime
  $ cat /proc/loadavg
  $ htop
  ```

- Check the number of CPUs in the system:
  ```bash
  $ htop
  $ cat /proc/cpuinfo | grep processor
  ```

- 2nd Line: Task-related information, e.g., total tasks, running tasks, sleeping tasks, stopped tasks, and zombie tasks:
  ```
  Tasks: 314 total,   2 running, 312 sleeping,   0 stopped,   0 zombie
  ```

- 3rd Line: CPU-related information, including CPU usage breakdown:
  ```
  %Cpu(s):  4.2 us,  0.6 sy,  0.0 ni, 95.1 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
  ```

- 4th Line: Memory-related information, including total memory, free memory, used memory, and cached memory:
  ```
  MiB Mem :  23708.3 total,  16222.5 free,   2419.9 used,   5065.9 buff/cache
  ```
  - Unused memory is wasted memory, so cached memory being used is a good thing.

- 5th (Final) Line: Swap memory information (located on your hard drive, slower than RAM). Too much swap usage may indicate running out of RAM.

**2. Lower Section**

- Process ID (PID)
- User (USER)
- Priority (PR)
- Niceness value (NI)
- Virtual memory usage (VIRT)
- Physical memory usage (RES)
- Shared memory (SHR)
- CPU percentage (%CPU)
- Memory percentage (%MEM)
- Time spent on the task (TIME+)
- Command executed by the task (COMMAND)

**Some Shortcuts:**

- Shift + p: Sort processes by CPU usage.
- Shift + m: Sort processes by memory usage.
- Press K, enter a process ID to kill a process.
- Press D and enter to change the default delay time (1 = 1 second) for refreshing the top screen.
- Press e and choose a size unit (k, m, g, t, p) to change display units.
- Press i to show idle processes.
- Press n, enter the number of processes to display.
- `top -u root` to check user-specific usage.
- Press t to toggle graphs on/off.
- Press Shift + l to locate and highlight a process.
- Press r, enter a nice value to renice a Linux process (e.g., -20: highest, 0: default, +19: lowest).
- Press c to show the absolute path of a running process.

**Save Top Command Results in a File:**

- `$ top -n 1 -b > top-output.txt`

- Press Shift + o, enter a value to see processes using more than a specified %MEM.

- Press 'z' to add color to the display.
- Press Shift + Z to open color settings and choose display elements to change colors.

   0. Black.
   1. Red.
   2. Green.
   3. Yellow.
   4. Blue.
   5. Magenta.
   6. Cyan.
   7. White.

---

This should provide a clearer and properly formatted version of the information you provided.
