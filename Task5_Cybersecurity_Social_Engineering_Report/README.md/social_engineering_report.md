# Task 5 – Research Report
# Social Engineering Attacks

---

## 1. Introduction

- Social engineering is the manipulation of people to obtain information or access.
- It targets **human behaviour** instead of directly attacking systems.
- Common psychological tricks:
  - Trust
  - Fear
  - Urgency
  - Curiosity
  - Authority
- Common attacks:
  - Phishing
  - Pretexting
  - Baiting
  - Quid Pro Quo
- **Key point:** Even strong technical security can be bypassed through human mistakes.

---

## 2. Phishing

### Definition

- Fraudulent communication used to steal information or credentials.
- Usually delivered through email, SMS, or phone calls.
- May contain:
  - Fake links
  - Malicious attachments
  - Fake login pages
  - Urgent requests

### Types

**Spear Phishing**
- Targets a specific person.
- Uses personalized information.

**Whaling**
- Targets executives such as CEOs and CFOs.
- Usually focuses on sensitive or financial information.

**Vishing**
- Voice-based phishing.
- Usually performed through phone calls.

**Smishing**
- Phishing through SMS/text messages.
- Often uses fake delivery, bank, or account messages.

### How It Works

1. Attacker creates a fake message.
2. Victim receives the message.
3. Attacker creates urgency or trust.
4. Victim clicks or responds.
5. Information is stolen or access is gained.

### Case Study – RSA SecurID Attack (2011)

- RSA was targeted through spear-phishing emails.
- Employees received a malicious Excel attachment.
- Opening the file allowed attackers to gain access.
- Attackers later accessed information related to SecurID.
- **Lesson:** A single employee action can become the starting point of a major breach.

### Prevention

1. Security awareness training.
2. Use MFA.
3. Use email filtering.
4. Verify suspicious requests independently.

---

## 3. Pretexting

### Definition

- Creating a **fake identity or situation** to gain trust.
- Attacker may pretend to be:
  - IT support
  - Manager
  - Bank employee
  - Vendor
  - Government official

### How It Works

1. Research the target.
2. Create a believable story.
3. Contact the victim.
4. Build trust.
5. Request information or access.

### Case Study – Ubiquiti Networks (2015)

- Attackers impersonated company executives.
- Employees received fraudulent payment requests.
- Approximately **$46.7 million** was transferred.
- **Lesson:** Important financial requests must be independently verified.

### Prevention

1. Verify identity.
2. Use multiple approvals for financial transactions.
3. Train employees to recognize impersonation.

---

## 4. Baiting

### Definition

- Uses an attractive or interesting item to make a victim interact with it.
- Main psychological triggers:
  - Curiosity
  - Reward
  - Desire

### Physical Baiting

- Unknown USB drive.
- May be left in:
  - Parking areas
  - Offices
  - Public places
- Connecting an unknown device can introduce malware.

### Digital Baiting

Examples:

- Fake software downloads.
- Fake giveaways.
- Suspicious files.
- Malicious QR codes.
- Fake advertisements.

### Case Study – Stuxnet

- Stuxnet was discovered in 2010.
- It targeted industrial control systems associated with Iran's nuclear program.
- Removable media played an important role in spreading the malware into isolated environments.
- **Lesson:** Air-gapped systems still require physical security.

### Prevention

1. Restrict unauthorized USB devices.
2. Use endpoint security.
3. Never connect unknown devices.

---

## 5. Quid Pro Quo

### Definition

- Attacker offers a **service or benefit** in exchange for information or access.

### Example

- Attacker pretends to be IT support.
- Offers to fix an employee's system.
- Requests sensitive information in return.

### Prevention

- Verify support personnel.
- Never share passwords or OTPs.
- Use official support channels.
- Report suspicious requests.

---

## 6. Comparison Table

| Attack | Target | Psychological Lever | Countermeasure |
|---|---|---|---|
| Phishing | General users | Urgency, fear | Training + filtering |
| Spear Phishing | Specific users | Trust, personalization | Verification + MFA |
| Whaling | Executives | Authority, urgency | Executive training |
| Vishing | Phone users | Authority, fear | Call verification |
| Smishing | Mobile users | Urgency | Link verification |
| Pretexting | Employees | Trust, authority | Identity verification |
| Baiting | Users/employees | Curiosity, reward | USB restrictions |
| Quid Pro Quo | Employees | Reciprocity | Verification |

---

## 7. Employee Security Awareness Checklist

- [ ] Identify suspicious emails and messages.
- [ ] Verify unusual requests.
- [ ] Avoid unknown USB devices.
- [ ] Use MFA securely.
- [ ] Report suspicious activity.

---

## 8. Organisational Recommendations

1. **Regular Training** – Conduct security awareness programs.
2. **MFA** – Protect important accounts.
3. **Verification** – Verify sensitive requests.
4. **Least Privilege** – Give users only necessary access.
5. **Reporting Culture** – Encourage employees to report incidents.

---

## 9. Conclusion

- Social engineering targets people rather than only technology.
- Phishing, pretexting, and baiting use different psychological techniques.
- Technical controls alone are not enough.
- Employee awareness is an important part of cybersecurity.
- **Best approach:** Technology + Training + Verification + Security Policies.

---

## 10. References

1. CISA – Social Engineering and Phishing Guidance.
2. SANS Institute – Reading Room.
3. Verizon – Data Breach Investigations Report.
4. FBI IC3 – Internet Crime Reports.
5. RSA Security – 2011 SecurID Incident.
6. Ubiquiti Networks – 2015 Business Email Compromise.
7. CISA – Industrial Control Systems / Stuxnet information.  

**Domain:** Cybersecurity  
**Author:** Jeevika B  
**Role:** Security Analyst Intern

