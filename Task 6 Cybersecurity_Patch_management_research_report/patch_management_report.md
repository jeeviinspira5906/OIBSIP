

# TASK 6: RESEARCH REPORT: THE IMPORTANCE OF PATCH MANAGEMENT

# Patch Management: A Basic but Important Defense Against Cyber Attacks

---

## 1. Introduction

Imagine leaving your front door unlocked even though you already know that the lock has a problem. Patch management is similar. Organizations may know that their software has a security vulnerability, but sometimes they delay fixing it because of downtime, testing, or other business priorities.

A **patch** is a software update released by a vendor to fix bugs, security vulnerabilities, or other problems. Patch management is one of the basic and important practices in cybersecurity because it helps organizations protect their systems from vulnerabilities that attackers already know about.

### Why This Matters

**The problem:** 32% of ransomware attacks in 2024 started with an unpatched vulnerability, and 59% of organizations were hit by ransomware in the last year.

**The bigger problem:** 70% of security breaches related to unpatched vulnerabilities could be prevented with better patch management.

This shows that many cyber attacks are not always caused by completely new or unknown threats. In many cases, the vulnerability is already known and a patch is already available. The real problem is that the organization has not installed the patch on time.

---

## 2. How Vulnerabilities Happen, Get Found, and Get Exploited

### The Vulnerability Lifecycle

**Discovery Phase**

A vulnerability is a weakness or flaw in software that can be used by an attacker. Vulnerabilities can be discovered in different ways:

* Security researchers testing software
* Attackers searching for weaknesses
* Customers reporting unusual behavior
* Developers finding bugs during code review

**CVE Registration & Scoring**

After a vulnerability is discovered, it can be assigned a **CVE (Common Vulnerabilities and Exposures)** ID. It works like a unique identification number for a security vulnerability. For example, **CVE-2017-5638** was associated with the Apache Struts vulnerability involved in the Equifax breach.

The **CVSS (Common Vulnerability Scoring System)** is used to measure how serious a vulnerability is. Scores range from 0 to 10:

* **0–3.9:** Low
* **4.0–6.9:** Medium
* **7.0–8.9:** High
* **9.0–10.0:** Critical

**Patch Release**

After a vulnerability is identified, the software vendor may release a security patch. Vendors such as Microsoft, Apache, and Adobe regularly release security updates to fix known vulnerabilities.

However, releasing a patch does not automatically protect every organization. The organization still needs to identify the affected systems, test the patch, and install it.

**The Exploitation Window**

The time between the release of a patch and the actual deployment of that patch is important. During this period, systems that are still vulnerable may be targeted by attackers.

The longer an organization waits, the greater the chance that attackers can take advantage of the vulnerability.

---

## 3. Real-World Consequences: When Patching Fails

### WannaCry (May 2017) — A Major Example

The **EternalBlue vulnerability (CVE-2017-0144)** affected the SMBv1 protocol in Windows systems. Attackers could use the vulnerability to gain unauthorized access to vulnerable systems.

The important point is that **Microsoft had already released a security patch on March 14, 2017**. The EternalBlue exploit became publicly available on April 14, 2017, and the WannaCry attack began on May 12, 2017.

This gave organizations time to apply the patch, but many systems were still not updated.

**What happened:**

WannaCry infected more than **300,000 computer systems across more than 150 countries**. It spread rapidly from one vulnerable system to other vulnerable systems on the same network.

Several organizations were affected:

* Renault and Nissan had production problems
* Honda's Sayama plant was affected
* Boeing reported affected systems
* The UK National Health Service (NHS) reported **6,912 cancelled appointments and operations**

The global economic impact of WannaCry has been estimated at around **$4 billion**.

**The kill switch:**

Security researcher Marcus Hutchins discovered a mechanism in the WannaCry malware that helped slow the spread of the attack. This gave defenders additional time to respond and patch vulnerable systems.

**The lesson:**

The most important lesson from WannaCry is that a patch was already available before the attack. Organizations that had installed the patch were protected from this particular vulnerability, while many unpatched systems were affected.

---

### Equifax (2017) — A Long-Term Example

The Equifax breach is another important example of why patch management is necessary.

**The timeline:**

* **March 7, 2017:** Apache releases a critical patch for Apache Struts CVE-2017-5638
* **May 13, 2017:** Attackers exploit the unpatched vulnerability in Equifax's consumer dispute portal
* **May 13 – July 29:** Attackers remain inside the network for more than 76 days
* **July 29:** Equifax detects suspicious activity
* **September 7:** Equifax publicly announces the breach

**What was stolen:**

The attackers obtained sensitive information including:

* Social Security numbers
* Dates of birth
* Addresses
* Driver's license numbers

Approximately **147 million Americans** were affected.

**The cost:**

The breach resulted in approximately **$1.4 billion in total damages**, including settlements, lawsuits, and recovery costs.

**Why it happened:**

A security patch for the vulnerability was available, but it was not properly applied to the affected public-facing system.

This incident shows that delaying a security update can result in serious consequences, especially when the affected system is connected to sensitive information.

---

## 4. Important Statistics

### Attacks and Vulnerabilities

* 60% of organizations that experienced a data breach cited a known, unpatched vulnerability as the root cause.
* Unpatched systems account for 57% of malware infections in enterprise environments.
* 2024 saw a 61% increase in vulnerabilities being successfully exploited when the available patch was more than 30 days old.

### Financial Impact

* The global average cost of a data breach reached $5.08 million according to IBM's 2025 Cost of a Data Breach Report.
* 82% of breaches involving stolen credentials were considered preventable through timely patching of known vulnerabilities.

### Why Organizations Delay Patching

Organizations may delay patching for several reasons:

* 81% of CIOs and CISOs have delayed patches to maintain business operations.
* 79% of organizations consider patch validation a major challenge.
* 71% of IT and cybersecurity professionals believe patching is complex and time-consuming.

### Detection and Remediation

* The average time to detect an unpatched vulnerability is around 30 days.
* Patch deployment delays can average around 45 days.
* It can take an average of 73 days to contain a breach involving unpatched vulnerabilities.

---

## 5. The Patch Management Lifecycle

A proper patch management process can be divided into five main phases.

### Phase 1: Discovery

The first step is to identify systems that require updates.

Organizations should:

* Scan systems for missing patches
* Identify newly discovered CVEs
* Find which systems are affected
* Maintain an updated inventory of devices and software

**Important point:**
An organization cannot properly patch systems if it does not know what systems and software it has.

### Phase 2: Assessment

After identifying missing patches, organizations need to decide which ones should be applied first.

They should consider:

* CVSS severity
* Importance of the affected system
* Possible damage if the vulnerability is exploited
* Possible downtime or compatibility issues caused by the patch

Critical and high-severity vulnerabilities should normally receive higher priority.

### Phase 3: Testing

Before applying a patch to production systems, organizations should test it in a controlled environment.

Testing can include:

* Creating a test environment
* Applying the patch
* Checking whether applications still work
* Looking for compatibility problems
* Checking whether the system performs normally

Testing is important because sometimes a patch can create unexpected problems.

### Phase 4: Deployment

After testing, patches can be deployed to the required systems.

Organizations can:

* Patch critical systems first
* Use maintenance windows
* Deploy patches in stages
* Start with a small test group
* Monitor systems during and after deployment

Patch management can take significant time. 49% of security teams spend more than 20 hours per week on patch management tasks.

### Phase 5: Verification

Installing a patch is not the final step. Organizations should verify whether the patch was actually installed successfully.

They can:

* Scan systems again
* Check patch status
* Monitor for exploitation attempts
* Record failed installations
* Reapply failed patches when necessary

This is important because a patch that was planned or scheduled may not always reach every endpoint.

---

## 6. Seven-Step Patch Management Checklist

### ✓ Step 1: Inventory Everything

Organizations should maintain a list of:

* Devices
* Servers
* Applications
* Operating systems
* Software versions
* Vendors

If an organization does not know what systems it has, it becomes difficult to identify and fix vulnerabilities.

### ✓ Step 2: Establish a Patching Policy

Organizations should create a clear patching policy.

For example:

* **Critical patches:** Within 24–48 hours
* **High-severity patches:** Within 2 weeks
* **Medium-severity patches:** Within 30 days
* **Low-severity patches:** Review periodically

The policy should clearly define who is responsible for patching and how patch status will be monitored.

### ✓ Step 3: Prioritize by Risk

Not every patch needs to be installed at the same time.

Organizations should prioritize:

1. Critical vulnerabilities on critical systems
2. Critical vulnerabilities on other systems
3. High-severity vulnerabilities on critical systems
4. High-severity vulnerabilities on other systems
5. Medium and low-severity vulnerabilities

### ✓ Step 4: Automate Patching

Manual patching can become difficult when an organization has hundreds or thousands of systems.

Patch management tools can help to:

* Find missing patches
* Deploy patches
* Monitor patch status
* Generate reports
* Enforce patching policies

Automation can reduce repetitive work and improve consistency.

### ✓ Step 5: Test Before Production

Patches should be tested before being deployed across the entire organization.

Testing helps identify:

* Application compatibility problems
* Performance issues
* System failures
* Configuration problems

### ✓ Step 6: Document and Report

Organizations should maintain records of:

* Patch installation dates
* Systems that were patched
* Failed patches
* Pending patches
* Problems caused during deployment

This information can also be useful during audits and security investigations.

### ✓ Step 7: Monitor Continuously

Patch management should not stop after installation.

Organizations should continue monitoring for:

* Exploitation attempts
* Failed patches
* System performance problems
* New vulnerabilities
* Newly released security updates

---

## 7. Why Organizations Struggle and How to Fix It

### Challenge 1: Legacy Systems

**The problem:**

Some organizations still use old systems that are no longer supported by their vendors. These systems may not receive new security updates.

**The solution:**

* Identify end-of-life systems
* Plan to replace them
* Isolate them from important networks
* Use network segmentation
* Monitor them carefully until replacement

### Challenge 2: Downtime Concerns

**The problem:**

Some patches require systems to restart. Organizations may avoid patching because they are worried about interrupting business operations.

**The solution:**

* Schedule maintenance during off-hours
* Patch systems one at a time where possible
* Use load balancing
* Keep backup systems available
* Inform users about maintenance schedules

Planned downtime is generally easier to manage than unexpected downtime caused by a cyber attack.

### Challenge 3: Testing Requirements

**The problem:**

Organizations need to test patches before deployment, but testing takes time.

**The solution:**

* Create test environments
* Automate testing where possible
* Give critical vulnerabilities higher priority
* Perform more detailed testing for important systems

### Challenge 4: Resource Constraints

**The problem:**

IT teams may have limited staff and many systems to manage. Manual patching can take a lot of time.

**The solution:**

* Automate patch discovery
* Automate deployment
* Prioritize critical vulnerabilities
* Use centralized patch management tools
* Monitor patch status through dashboards

### Challenge 5: Tracking Different Systems

**The problem:**

Modern organizations may have cloud systems, physical servers, laptops, mobile devices, IoT devices, and applications from different vendors.

Managing all these systems can become difficult.

**The solution:**

* Use centralized patch management
* Maintain accurate asset inventories
* Use vulnerability scanners
* Create patch status dashboards
* Perform regular security reviews
* Use network segmentation

---

## 8. Best Practices Summary

### **Do This:**

* Patch critical vulnerabilities within 24–48 hours
* Test patches before production deployment
* Automate patch discovery and deployment
* Verify that patches were successfully installed
* Monitor systems after patching
* Maintain patch records
* Replace or isolate end-of-life systems
* Use network segmentation

### **Avoid This:**

* Ignoring critical security updates
* Delaying patches without a valid reason
* Patching production systems without testing
* Manually patching hundreds of systems
* Skipping verification
* Keeping unsupported software indefinitely
* Assuming a patch was installed without checking

---

## 9. Conclusion

Patch management is one of the basic but very important parts of cybersecurity. It may look like a simple task of installing software updates, but it can make a major difference in protecting an organization from known vulnerabilities.

The WannaCry and Equifax incidents clearly show what can happen when available security patches are not applied on time. In both cases, attackers were able to take advantage of vulnerabilities that already had fixes available.

A good patch management process should include **identifying vulnerabilities, assessing their risk, testing patches, deploying them, and verifying that they were successfully installed**.

Organizations should also use automation, maintain proper asset inventories, monitor their systems continuously, and give priority to critical vulnerabilities.

Patch management cannot prevent every cyber attack, but it can remove many known weaknesses before attackers get a chance to exploit them.

**Patching is not just an IT task. It is an important part of an organization's overall cybersecurity strategy.**

---

## References

1. **NIST Special Publication 800-40** – Guide to Enterprise Patch Management Planning: Security Patch and Vulnerability Management
   Source: [https://nvlpubs.nist.gov/](https://nvlpubs.nist.gov/)

2. **CISA Patch Management Guidance** – Cybersecurity and Infrastructure Security Agency resources on vulnerability and patch management
   Source: [https://www.cisa.gov/](https://www.cisa.gov/)

3. **CVE Database & CVSS Scoring** – Common Vulnerabilities and Exposures database maintained by MITRE
   Source: [https://cve.mitre.org/](https://cve.mitre.org/)

4. **IBM Cost of a Data Breach Report 2025** – Annual research on the financial impact of data breaches

5. **Sophos State of Ransomware 2024** – Research on ransomware attacks and unpatched vulnerabilities

6. **Equifax Breach Analysis** – Case study of Apache Struts CVE-2017-5638 exploitation and consequences

7. **WannaCry Analysis** – Documentation of EternalBlue exploitation and patch management failure

---

## AUTHOR

**JEEVIKA B**
**SECURITY ANALYST INTERN**
