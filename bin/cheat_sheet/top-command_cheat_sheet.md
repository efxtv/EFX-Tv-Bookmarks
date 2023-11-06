---

**Top Command**

Find out what's running on your Linux, monitor resource contention, CPU and memory issues, and usage.

- The `top` command updates the screen every 3 seconds.

**Top Command Divided into Two Categories:**

1. **UPPER SECTION - Statistics or Resource Usage**

   - First line: User-related information, Load average and uptime:
     ```
     Top - 11:58:20 up  2:19,  2 users,  load average: 0.84, 1.35, 1.12
     ```
     - Uptime
     - Logged in users
     - Load average:
       - Load during the past 1 minute
       - Load over the past 5 minutes
       - Load over the last 15 minutes

   - In the load average, if all the numbers (e.g., load average: 0.84, 1.35, 1.12) become 7, it means you are using 100% CPU, and it indicates you have 7 CPUs in your system.
   - 100% busy = number of CPUs you have.

   - Logged in users can be checked with the command:
     ```
     $ w
     ```

   - Load average (how busy your system is):
     ```
     $ uptime
     $ cat /proc/loadavg
     $ htop
     ```

   - Check the number of CPUs in the system:
     ```
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
     - us stands for user space (user-specific program run)
     - sy stands for system or kernel-specific programs (kernel space)
     - ni stands for niceness (task priority)
     - id stands for idle (CPU idle time)
     - wa stands for waiting (process waiting for input or output)
     - hi stands for hardware interrupts (time CPU spends managing hardware interrupts)
     - si stands for software interrupts (time CPU spends managing software interrupts)
     - st stands for how much virtual CPU is waiting for physical CPU.

   - 4th Line: Memory-related information, including total memory, free memory, used memory, and cached memory:
     ```
     MiB Mem :  23708.3 total,  16222.5 free,   2419.9 used,   5065.9 buff/cache
     ```
     - Total memory
     - Free memory
     - Used memory
     - Cached used memory (system running out of memory; cached memory gets used as needed)
     - Unused memory is wasted memory, so cached memory being used is a good thing.

   - 5th (Final) Line: Swap memory information (located on your hard drive, slower than RAM). Too much swap usage may indicate running out of RAM.

2. **LOWER SECTION**

   - PID - Process ID
   - USER - Which user is running the process
   - PR - Priority
   - NI - Niceness value
   - VIRT - Total amount of virtual memory used by that task
   - RES - Physical memory being used by the process
   - SHR - Shared memory, how much shared memory is being used by the task
   - %CPU - CPU percentage
   - %MEM - Memory percentage
   - TIME - How much time CPU has spent on that particular task
   - COMM - The command that has been executed by the task

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
- In Linux, the nice value is an integer in the range of -19 to 20. The higher the nice value, the lower the priority of the process. The default nice value is zero.
- Press c to show the absolute path of a running process.

**Save Top Command Results in a File:**

- `$ top -n 1 -b > top-output.txt`

- Press Shift + o, enter a value to see processes using more than a specified %MEM.

- Press 'z' to add color to the display.
- Press Shift + Z to open color settings and choose display elements to change colors.

  - Choose which display element you want to change by pressing:
    - S. Summary Data area.
    - M. Messages and prompts.
    - H. Column headings.
    - T. Task information in the process list.

- Press a number to choose the colors.
  0. Black.
  1. Red.
  2. Green.
  3. Yellow.
  4. Blue.
  5. Magenta.
  6. Cyan.
  7. White.

---
