
## Common Network Security Threats: Understanding Their Mechanisms, Impact, and Mitigation

## Introduction

Networks are the backbone of almost everything organizations do today, which also makes them one of the most attractive targets for attackers. A single successful attack can take a service offline for hours, expose millions of customer records, or quietly redirect users to a fake login page without anyone noticing until it's too late. For network administrators, understanding how these attacks actually work — not just their names — is what makes the difference between reacting to a breach and preventing one. This report walks through four of the most common network security threats: DoS/DDoS attacks, Man-in-the-Middle (MITM) attacks, IP spoofing, and DNS poisoning/spoofing, covering how each one works, a real incident that shows its impact, and concrete ways to defend against it.

---

## 1. DoS/DDoS Attacks

**How it works:** A Denial-of-Service attack floods a target with traffic or exploits a weakness until it can no longer serve legitimate users. A Distributed Denial-of-Service (DDoS) attack does the same thing but from many machines at once — usually a botnet of hijacked devices — making it bigger and harder to block. Attacks generally fall into three buckets: volumetric floods that just eat up bandwidth, protocol attacks that exhaust server resources (like SYN floods), and application-layer attacks that mimic real traffic to overload a specific service. Attackers often spoof their source IP to stay hidden or to trigger amplification, where a tiny forged request bounces back a much bigger response aimed at the victim.

**Real-world example:** In October 2016, the Mirai botnet — built from hundreds of thousands of hacked IoT devices like routers and cameras still using default passwords — hit Dyn, a major DNS provider. Because Dyn resolved domain lookups for Twitter, Netflix, Reddit, GitHub, and Amazon, huge parts of the internet went down for hours, even though none of those companies were attacked directly. The same botnet had already knocked the security blog KrebsOnSecurity offline days earlier with a then-record 620+ Gbps flood.

**Impact:** Lost revenue, damaged trust, and sometimes a smokescreen for other attacks happening while everyone's distracted fighting the outage.

**Mitigations:**
1. Use a dedicated DDoS protection/scrubbing service that filters bad traffic before it reaches you.
2. Have a disaster recovery plan ready in advance, with clear roles and a direct line to your ISP.
3. Harden internet-facing devices (change default credentials, patch firmware, close unused UDP services) so they can't be recruited into someone else's botnet.

---

## 2. Man-in-the-Middle (MITM) Attacks

**How it works:** In a MITM attack, someone quietly inserts themselves between two parties who think they're talking directly to each other — reading or altering the data in between. Common techniques include ARP cache poisoning on a local network, rogue Wi-Fi hotspots, and forged TLS certificates that let an attacker decrypt "secure" HTTPS traffic without either side noticing.

**Real-world example:** Between 2014 and 2015, Lenovo shipped laptops with preinstalled adware called Superfish, which quietly installed its own certificate authority to intercept and re-sign every HTTPS connection so it could inject ads. The problem: Superfish's private key was easy to crack and identical across every affected device, meaning any attacker — not just Lenovo — could impersonate any secure website to those users, including banking sites.

**Impact:** Stolen credentials and financial data, broken trust in "secure" connections, and reputational damage to the vendor whose software (or network) enabled it.

**Mitigation Strategies:**
1. Enforce HTTPS everywhere with HSTS, and use certificate pinning for sensitive applications so a fake certificate gets rejected instead of trusted.
2. Deploy Dynamic ARP Inspection and DHCP snooping on switches to stop local ARP poisoning.
3. Use short-lived auth tokens and secure cookie flags so a stolen session doesn't stay useful for long.

---

## 3. IP Spoofing

**How it works:** IP spoofing means forging the "from" address on a packet so it looks like it came from somewhere else. The IP protocol wasn't built to verify who's really sending a packet, so this is trivial to do. Attackers use it to hide their tracks, impersonate a trusted host, or — most commonly — to power reflection/amplification DDoS attacks, where a small spoofed request to an open server tricks it into blasting a huge response at the victim instead of the attacker.

**Real-world example:** In February 2018, attackers spoofed GitHub's IP address and sent tiny forged requests to thousands of exposed memcached servers online. Because those servers had no authentication and replied with responses up to 50,000 times larger than the request, GitHub got hit with 1.35 Tbps of traffic — the largest DDoS ever recorded at the time. GitHub's protection service caught it and rerouted traffic within minutes, but the incident renewed calls for ISPs to block spoofed traffic at the source.

**Impact:** Enables massive amplification attacks and makes attribution much harder, since logs point at an innocent victim's IP instead of the real attacker.

**Mitigations:**
1. Implement ingress/egress filtering (BCP 38) so spoofed packets get dropped before they can leave a network.
2. Lock down or disable UDP-based services (memcached, NTP, open DNS resolvers) that can be abused as amplifiers.
3. Don't rely on source IP alone for trust — use IPsec or mutual TLS for anything that actually needs to verify identity.

---

## 4. DNS Poisoning/Spoofing

**How it works:** DNS spoofing is sending forged DNS responses that look legitimate; when a resolver accepts and caches one, that's DNS cache poisoning. Because DNS queries rely on a guessable transaction ID and port, an attacker who's fast enough can beat the real answer and slip in a fake one first — silently redirecting everyone using that resolver to a malicious site until the cache expires. A related, increasingly common version is DNS hijacking, where attackers compromise a domain registrar account directly to change DNS records for good, rather than racing a single query.

**Real-world example:** From 2018 to 2019, a campaign known as "Sea Turtle" compromised domain registrars and DNS providers to redirect records for dozens of government agencies, mostly across the Middle East and North Africa, intercepting logins along the way. CISA took it seriously enough to issue Emergency Directive 19-01, requiring federal agencies to audit their DNS records and enforce MFA on registrar accounts.

**Impact:** Users get quietly redirected to phishing or malware sites while the browser still shows the "right" domain name — making it one of the harder attacks for victims to catch on their own.

**Mitigations:**
1. Deploy DNSSEC so resolvers can cryptographically verify DNS responses instead of just trusting them.
2. Require MFA (and registry lock, where available) on domain registrar accounts to prevent hijacking.
3. Monitor DNS records for unexpected changes and watch for red flags like sudden IP changes or unusual NXDOMAIN spikes.

---

## Comparison Table

| Threat | Attack Vector | Who Is at Risk | Difficulty to Execute | Ease of Mitigation |
|---|---|---|---|---|
| **DoS/DDoS** | Flooding a target via botnets or amplification | Any internet-facing service, especially DNS providers and high-traffic sites | Low–Medium (attack-for-hire lowers the bar) | Medium — needs ongoing investment, hard to fully prevent |
| **MITM** | ARP poisoning, rogue Wi-Fi, forged certificates | Users on shared networks; anyone trusting vendor software or TLS | Medium | Medium–High — strong TLS + segmentation works well if consistently applied |
| **IP Spoofing** | Forging source IP to hide origin or enable amplification | Orgs with exposed UDP services; anyone downstream of an amplification attack | Low–Medium | Medium — requires ISP/third-party cooperation, not just your own network |
| **DNS Poisoning/Spoofing** | Forged DNS responses or registrar account hijacking | Anyone relying on unvalidated DNS; high-value targets for account takeover | Medium–High | Medium — DNSSEC and MFA help but need deliberate rollout |

---

## Conclusion

Three takeaways for network administrators:

1. **Layer your defenses.** No single control covers everything — DDoS scrubbing, TLS hygiene, anti-spoofing filters, and DNSSEC each patch a different gap, and skipping one is usually exactly how attackers get in, as every example above shows.
2. **Old protocols assume too much trust.** IP has no source authentication, DNS relies on guessable IDs, and open UDP services will answer anyone — these are decades-old design gaps attackers still exploit, so don't trust them by default.
3. **Basic hygiene beats sophistication.** Sea Turtle, Mirai, and Superfish all succeeded through weak credentials, poor defaults, or unvetted software — not clever new exploits. MFA, patching, and vetting third-party software go a long way for very little cost.

---

## References

1. CISA — *Understanding Denial-of-Service Attacks*: https://www.cisa.gov/news-events/news/understanding-denial-service-attacks
2. CISA — *Heightened DDoS Threat Posed by Mirai and Other Botnets*: https://www.cisa.gov/news-events/alerts/2016/10/14/heightened-ddos-threat-posed-mirai-and-other-botnets
3. MITRE ATT&CK — *Network Denial of Service (T1498)*: https://attack.mitre.org/techniques/T1498/
4. MITRE ATT&CK — *Adversary-in-the-Middle (T1557)* and *ARP Cache Poisoning (T1557.002)*: https://attack.mitre.org/techniques/T1557/
5. GitHub Engineering Blog — *February 28th DDoS Incident Report*: https://github.blog/news-insights/company-news/ddos-incident-report/
6. CISA — *Alert AA19-024A: DNS Infrastructure Hijacking Campaign (Sea Turtle)*
7. NIST SP 800-81r2 — *Secure Domain Name System (DNS) Deployment Guide*
8. NIST SP 800-53 — *Security and Privacy Controls* (SC-7, SC-8)
9. PKI Consortium — *Lenovo Enables Man-in-the-Middle Attacks Via Superfish Adware*: https://pkic.org/2015/02/20/lenovo-enables-man-in-the-middle-attacks-via-superfish-adware/
is it correct
