# 🛡️ OWASP - Open Worldwide Application Security Project

OWASP stands for **Open Worldwide Application Security Project** (formerly Open Web Application Security Project). It is a non-profit foundation focused on improving the security of software through community-led open-source projects, educational resources, and standardized frameworks.

---

## 🔍 What Does OWASP Do?

OWASP provides:
- ✅ Open-source tools and documentation
- ✅ Security guidelines and industry standards
- ✅ Community-driven projects
- ✅ Awareness and training materials for developers and professionals

---

## 🔧 Core OWASP Projects

| Project             | Description                                                                             |
| ------------------- | --------------------------------------------------------------------------------------- |
| OWASP Top 10        | A list of the top 10 most critical web application security risks                       |
| OWASP ASVS          | Application Security Verification Standard — for secure development lifecycle standards |
| OWASP ZAP           | Zed Attack Proxy — a free penetration testing tool for web applications                 |
| OWASP Cheat Sheets  | Concise security best practices for developers and testers                              |
| OWASP SAMM          | Software Assurance Maturity Model — evaluates and improves software security posture    |
| OWASP Mobile Top 10 | Top 10 mobile-specific security threats and risks                                       |

---

## 💡 Why OWASP Matters
- Helps developers, security testers, and organizations build secure software
- Promotes transparency, collaboration, and open innovation
- Acts as a global benchmark for application and web security practices

---

# 📊 OWASP Top 10 — 2021 Edition

Updated to reflect modern threats, software supply chain risks, and insecure design practices.

---

### 🔐 A01:2021 — Broken Access Control

**Description:**
> Improper enforcement of access control policies can allow attackers to access unauthorized functions or data.

**Examples:**
* URL tampering
* Forceful browsing
* Privilege escalation

**Impact:** 
> Unauthorized access to data or actions leading to data breaches and privilege abuse.

---

### 🔒 A02:2021 — Cryptographic Failures

*(Previously: Sensitive Data Exposure)*

**Description:**
> Weak or misconfigured cryptographic protections expose sensitive data like credentials and PII (Personally Identifiable Information).

**Examples:**
* Using HTTP instead of HTTPS
* Insecure key storage
* Weak hashing (e.g., MD5)

**Impact:** 
> Exposure of sensitive data, identity theft, and regulatory violations.

---

### 💉 A03:2021 — Injection

**Description:**
> Malicious data sent to interpreters (e.g., SQL, NoSQL, LDAP) leading to unintended execution.

**Examples:**
* SQL Injection
* Command Injection
* Server-Side Template Injection

**Impact:** 
> Complete system compromise, data leakage, and unauthorized commands execution.

---

### 🧱 A04:2021 — Insecure Design

*New Category*

**Description:**
> Design flaws due to missing threat models, insecure workflows, or poor architecture.

**Examples:**
* No threat modeling
* Insecure default logic
* Lack of secure development lifecycle

**Impact:** 
> Systematic weaknesses that are difficult to fix and expose the system to future threats.

---

### ⚙️ A05:2021 — Security Misconfiguration

**Description:**
> Using default settings or exposing sensitive data through verbose errors or open services.

**Examples:**
* Exposed admin interfaces
* Misconfigured HTTP headers
* Open S3 buckets or cloud storage

**Impact:** 
> System exposure, data leaks, and potential unauthorized control by attackers.

---

### 🧩 A06:2021 — Vulnerable and Outdated Components

*(Previously: Using Components with Known Vulnerabilities)*

**Description:**
> Third-party libraries and frameworks with unpatched vulnerabilities.

**Examples:**
* Log4Shell vulnerability
* Apache Struts exploits
* Outdated JavaScript libraries (e.g., jQuery)

**Impact:** 
> Exploitation through known bugs leading to full application compromise.

---

### 👤 A07:2021 — Identification and Authentication Failures

*(Previously: Broken Authentication)*

**Description:**
> Flaws in login and identity verification systems.

**Examples:**
* Predictable login tokens
* Lack of Multi-Factor Authentication (MFA)
* Weak password reset logic

**Impact:** 
> Account takeover and unauthorized access to sensitive data and systems.

---

### 🧪 A08:2021 — Software and Data Integrity Failures

*New Category*

**Description:**
> Trust failures in CI/CD pipelines, unsigned updates, or deserialization flaws.

**Examples:**
* Tampered software packages
* Unverified plugins or modules
* Insecure deployment scripts
  
**Impact:**
> Code execution by attackers, supply chain compromise, and backdoor installation.

---

### 📉 A09:2021 — Security Logging and Monitoring Failures

*(Previously A10:2017)*

**Description:**
> Failure to detect, alert, or log suspicious activity.

**Examples:**
* No login audit trails
* No alerting system
* Logging sensitive data insecurely
  
**Impact:**
> Undetected breaches and delayed response to active threats.

---

### 🌐 A10:2021 — Server-Side Request Forgery (SSRF)

*New Entry*

**Description:**
> SSRF vulnerabilities allow attackers to make requests from the server to internal or external systems.

**Examples:**
* Accessing internal AWS EC2 metadata
* Port scanning internal networks
* Interacting with internal-only APIs

**Impact:**
> Unauthorized access to internal infrastructure and services, leading to lateral movement.

---

# 🛡️ OWASP Top 10 - 2017

The **OWASP Top 10 (2017)** is a list of the most critical web application security risks, curated by the Open Worldwide Application Security Project.

---

## 💉 A1 — Injection

**Description:**
> Occurs when untrusted data is sent to an interpreter as part of a command or query.

**Examples:**
* SQL Injection
* OS Command Injection
* LDAP Injection

**Impact:**
> Data loss, corruption, or full system compromise.

> *"Code injection occurs when attackers send malicious input to execute unintended commands."*
---

## 🔑 A2 — Broken Authentication

**Description:**
> Vulnerabilities in authentication mechanisms that allow attackers to compromise user credentials.

**Impact:**
> Account takeover, privilege escalation, or full system access.

> *"Allows attackers to impersonate users or gain unauthorized access."*

---

## 🔐 A3 — Sensitive Data Exposure

**Description:**
> Inadequate protection of sensitive data (e.g., PII, credit cards, health info).

**Impact:**
> Data theft and compliance violations (e.g., GDPR, HIPAA).

> *"Failure to encrypt or securely store sensitive information."*

---

## 📦 A4 — XML External Entities (XXE)

**Description:**
> Flaws in XML parsers that allow external entity references.

**Impact:**
> Internal file disclosure, SSRF, and remote code execution.

> *"Vulnerable XML processing can leak internal files or access internal systems."*

---

## 🚫 A5 — Broken Access Control

**Description:**
> Improper enforcement of user roles or permissions.

**Impact:**
> Unauthorized access to functions or data.

> *"Attackers can access unauthorized resources or perform privileged actions."*

---

## ⚙️ A6 — Security Misconfiguration

**Description:**
> Default settings, verbose errors, or unnecessary features that expose the system.

**Impact:**
> System compromise, information leakage, or lateral movement.

> *"Poorly configured servers, frameworks, or apps make easy targets."*

---

## 🧪 A7 — Cross-Site Scripting (XSS)

**Description:**
> Allows attackers to inject client-side scripts into web pages.

**Impact:**
> Session hijacking, defacement, phishing, or malware delivery.

> *"Client-side code injection via input that isn't properly sanitized."*

---

## 🧩 A8 — Insecure Deserialization

**Description:**
> Deserialization of untrusted data can lead to remote code execution.

**Impact:**
> Denial of Service (DoS), privilege escalation, or injection attacks.

> *"Unsafe deserialization can allow attackers to control application flow."*

---

## 🧱 A9 — Using Components with Known Vulnerabilities

**Description:**
> Using outdated libraries, frameworks, or modules with public vulnerabilities.

**Impact:**
> Full system compromise, especially when components have high privileges.

> *"Your app is only as secure as the components it uses."*

---

## 📉 A10 — Insufficient Logging and Monitoring

**Description:**
> Lack of logging and alerting mechanisms to detect and respond to attacks.

**Impact:**
> Undetected breaches and delayed incident response.

> *"Without visibility, malicious activities go unnoticed."*

---

# 🛡️ OWASP Top 10 - 2013

The **OWASP Top 10 - 2013** identifies the most critical web application risks, based on global data and industry trends.

---

## 💉 A1 — Injection

**Description:**
> Injection flaws occur when untrusted data is sent to an interpreter as a command or query.

**Examples:**
* SQL Injection
* Command Injection
* LDAP Injection

**Impact**
> *"Attackers can trick the interpreter into executing unintended commands or accessing unauthorized data."*

---

## 🔐 A2 — Broken Authentication and Session Management

**Description:**
> Flaws in authentication or session handling allow attackers to steal credentials or session tokens.

**Examples:**
* Weak password reset mechanisms
* Session IDs exposed in URLs
* Missing session timeouts

**Impact**
> *"Attackers may impersonate users or hijack sessions."*

---

## 🧪 A3 — Cross-Site Scripting (XSS)

**Description:**
> XSS flaws occur when apps include untrusted data in web pages without validation.

**Examples:**
* JavaScript stored in comment fields
* Malicious input reflected in error messages

**Impact**
> *"Attackers can execute scripts in victims' browsers to hijack sessions, redirect users, or deface sites."*

---

## 🔎 A4 — Insecure Direct Object References

**Description:**
> Apps expose internal object references (like files, DB records, keys) without proper access control.

**Examples:**
* Changing the ID in a URL to access another user's data

**Impact**
> *"Attackers can manipulate parameters to access unauthorized resources."*

---

## ⚙️ A5 — Security Misconfiguration

**Description:**
> Covers misconfigured servers, frameworks, cloud storage, and exposed services.

**Examples:**
* Default admin accounts
* Stack traces in production
* Open ports or unnecessary services

**Impact**
> *"Such misconfigurations provide easy entry points for attackers."*

---

## 🔐 A6 — Sensitive Data Exposure

**Description:**
> Failure to protect sensitive data like financial, healthcare, or PII.

**Examples:**
* No HTTPS
* Weak cryptographic algorithms (e.g., MD5)
* Storing passwords in plaintext

**Impact**
> *"Exposed data can lead to identity theft, fraud, or regulatory violations."*

---

## 🚫 A7 — Missing Function Level Access Control

**Description:**
> Applications don’t enforce authorization checks on backend functions.

**Examples:**
* Frontend hides admin button, but attacker directly calls admin API

**Impact**
> *"Attackers can escalate privileges by invoking restricted functions directly."*

---

## 🧾 A8 — Cross-Site Request Forgery (CSRF)

**Description:**
> Tricks authenticated users into performing unwanted actions.

**Examples:**
* Auto-submitting forms to change passwords or emails

**Impact**
> *"Can result in unauthorized actions performed on behalf of the user."*

---

## 🧱 A9 — Using Components with Known Vulnerabilities

**Description:**
> Usage of outdated or vulnerable third-party components.

**Examples:**
* Using an old version of Apache Struts or jQuery
* Unpatched CMS plugins

**Impact**
> *"Attackers scan for vulnerable components and exploit them easily."*

---

## 🔄 A10 — Unvalidated Redirects and Forwards

**Description:**
> Applications redirect or forward users to untrusted URLs without validation.

**Examples:**
* Redirecting to a URL from a query parameter

**Impact**
> *"Can be used for phishing or redirecting to malicious sites."*

---


