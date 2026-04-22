# PrivateMind GmbH - Business Plan (EN)

*Draft, as of April 2026*
*Created by: Raffael (Founder) with support from Lio*

***

## Table of Contents

1. [Executive Summary](#1-executive-summary)
2. [Problem & Market Opportunity](#2-problem--market-opportunity)
3. [Market Analysis](#3-market-analysis)
4. [Product & Services](#4-product--services)
5. [Business Model & Pricing](#5-business-model--pricing)
6. [Marketing & Sales](#6-marketing--sales)
7. [Organization & Structure](#7-organization--structure)
8. [Financial Planning](#8-financial-planning)
9. [Risk Analysis](#9-risk-analysis)
10. [Milestones & Timeline](#10-milestones--timeline)
11. [Funding Opportunities](#11-funding-opportunities)
12. [Open Items & Next Steps](#12-open-items--next-steps)

* [Appendix](#appendix)

***

## 1\. Executive Summary

**PrivateMind** brings powerful AI where it belongs: directly into the business. As a turnkey appliance that runs locally and keeps data in-house.

At its core is the NVIDIA GB10 Grace Blackwell Superchip (ASUS Ascent GX10) - a compact system that runs enterprise-grade Large Language Models right on the desk. No cloud, no external dependencies.

The market for local AI infrastructure is growing rapidly, yet small and medium-sized enterprises lack the expertise, personnel, and time to build their own solutions. PrivateMind fills this gap with a complete offering of hardware, software, support, and ongoing management - starting in the DACH region, then expanding across Europe.

**Core promise:** Local AI that works. No cloud. No IT department. No compromises on data privacy.

**Business model:** Three hardware tiers (Standard, Professional, Premium) combined with a tiered monthly subscription model. Recurring revenue through support, updates, and model management.

**Legal form:** GmbH (German limited liability company, planned)

**Headquarters:** Dresden, Germany

**Market:** Europe-wide, with English as the primary language for all customer-facing communication (website, offers, support).

**Founder:** Raffael - Software developer with decades of experience in the IT industry.

***

## 2\. Problem & Market Opportunity

### The Problem

SMEs across Europe face a dilemma:

* **AI has become business-critical.** Competitors are automating processes, customers expect intelligent services, employees demand more productive tools.
* **Cloud-based AI solutions are problematic.** Sensitive business data (contracts, customer data, financials, internal communications) leaves the company. For many SMEs, this is unacceptable from a data protection and compliance perspective, especially under the GDPR.
* **Building own AI infrastructure is out of reach.** SMEs have neither dedicated IT departments nor the expertise to build, configure, and maintain AI systems themselves.

### The Gap

There is currently no offering that provides SMEs with a **ready-to-use, locally operated AI solution** combined with **ongoing support and updates** from a single source. Existing solutions are either:

* Cloud-based (data privacy problem)
* Developer hardware without support (e.g., ASUS Ascent GX10 is sold "as is" without any warranty)
* Enterprise solutions priced far beyond SME budgets

### The Opportunity

PrivateMind positions itself squarely in this gap: **The AI department that SMEs can't afford to hire, delivered as a monthly service.**

***

## 3\. Market Analysis

### Target Market

**Primary:** SMEs across Europe with 10-250 employees that:

* Regularly handle sensitive data (law firms, tax advisors, medical practices, engineering firms, consultancies)
* Don't yet have an AI strategy but feel the need
* Regard data protection and GDPR compliance as business-critical

**Secondary:** Larger mid-market companies looking to equip individual departments with local AI without burdening central IT.

### Market Size

* The EU counts approximately 23 million SMEs (Eurostat)
* The European AI market is growing at approximately 25-30% annually
* Only an estimated 15-20% of European SMEs use AI tools productively, while the majority express interest
* The addressable market (SAM) for GDPR-compliant, local AI solutions in the European SME segment is estimated at several billion euros
* Initial focus markets: Germany, Austria, Switzerland (DACH), Netherlands, Nordics, UK

### Competitive Landscape

| Competitor | Approach | Weakness from SME Perspective |
| ---------- | -------- | ----------------------------- |
| OpenAI, Microsoft Copilot, Google | Cloud-based AI | Data leaves the company |
| Ollama, LocalAI, LM Studio | Open-source self-hosted | Requires IT expertise, no support |
| NVIDIA DGX Spark (direct) | Hardware for developers | No SME support, no setup service |
| Local IT service providers | Custom solutions | Expensive, no standardized AI offering |
| **PrivateMind** | **Hardware + Service + Support** | **Complete solution from a single source** |

### Differentiation

1. **Data sovereignty** \- Everything stays local\, GDPR\-compliant by design
2. **Zero expertise requirement** \- Works out of the box
3. **Ongoing support** \- Not "buy and figure it out yourself"
4. **NVIDIA ecosystem** \- Same software stack as in the data center \(CUDA\, TensorRT\-LLM\)
5. **European company, European values** \- Data protection as a principle\, not a feature

***

## 4\. Product & Services

### Hardware Platform: ASUS Ascent GX10

All PrivateMind appliances are based on the ASUS Ascent GX10, a compact AI workstation powered by the NVIDIA GB10 Grace Blackwell Superchip. ASUS is the only OEM offering the GX10 in multiple SSD configurations.

**Technical Specifications (per unit):**

| Feature | Specification |
| ------- | ------------- |
| Chip | NVIDIA GB10 (Grace Blackwell) |
| GPU | Blackwell, 1 PFLOP FP4 AI performance |
| RAM | 128 GB LPDDR5X unified memory |
| Storage | 1 TB / 2 TB / 4 TB NVMe SSD (depending on product tier) |
| Network | ConnectX-7 200Gbps, 10GbE, Wi-Fi 7 |
| Clustering | Two units directly connectable via QSFP cable (256 GB memory pool) |
| Form factor | 150 x 150 x 51 mm, 1.48 kg |
| Power | 240W (USB-C power supply) |
| OS | NVIDIA DGX OS (Ubuntu-based) |

### Product Lines

|  | **PrivateMind Standard** | **PrivateMind Professional** | **PrivateMind Premium** |
| --- | -------------------- | ------------------------ | ------------------- |
| Hardware | 1x ASUS Ascent GX10 | 1x ASUS Ascent GX10 | **2x ASUS Ascent GX10 (Cluster)** |
| SSD | 1 TB | 2 TB | **2x 2 TB** |
| Unified Memory | 128 GB | 128 GB | **256 GB** |
| Max. model size | Up to 70B (FP16), up to 200B (4-bit) | Up to 70B (FP16), up to 200B (4-bit) | **Up to 200B (FP16), up to 405B (4-bit)** |
| Target audience | Small offices, entry level | Mid-market, high-usage teams | Demanding applications, large teams |
| **Hardware cost (approx.)** | **\~€3,050** | **\~€3,550** | **\~€7,100** |
| **Retail price (approx.)** | **€3,800** | **€4,500** | **€9,500** |

**Why ASUS:**

* **Cheapest GB10 system on the market** (up to €1,700 below NVIDIA DGX Spark)
* **Only OEM with three SSD variants** (1TB / 2TB / 4TB)
* **ASUS offers no support** \- PrivateMind fills this gap as a unique selling point
* **Identical hardware** to DGX Spark - same GB10 chip, same software stack

### Price Comparison: ASUS GX10 vs. Competition (all GB10-based)

*All prices in EUR. EU marketplace prices where available, otherwise converted at approx. €0.93/$1 (as of April 2026).*

| Manufacturer | Model | SSD | Price (approx.) |
| ------------ | ----- | --- | --------------- |
| **ASUS Ascent GX10** | **GG0010BN** | **1 TB** | **from €3,050** |
| **ASUS Ascent GX10** | **GG0020BN** | **2 TB** | **from €3,550** |
| **ASUS Ascent GX10** | **GG0016BN** | **4 TB** | **from €4,050** |
| NVIDIA DGX Spark | Founders Edition | 4 TB | €4,800 (EU Marketplace) |
| Gigabyte AI TOP ATOM | ATAGB10-9000 | 4 TB | from €4,000 |
| MSI EdgeXpert | 11SUS | 4 TB | from €3,700 |
| Acer Veriton | VGN100 | 4 TB | from €3,875 |

*Note: NVIDIA raised the DGX Spark price by approx. €650 in February 2026 due to global LPDDR5X supply constraints.*

### Software Stack

Every PrivateMind appliance ships with a pre-installed software stack:

* **NVIDIA DGX OS** with CUDA 13, cuDNN, TensorRT-LLM
* **Curated LLM selection**: Optimized models (e.g., Llama 3.x, DeepSeek, Qwen, Gemma) tailored to customer needs
* **PrivateMind Dashboard**: Custom web interface for model management, chat, document processing, and system monitoring
* **Automatic update pipeline**: Secure delivery of model and system updates
* **RAG integration** (Retrieval Augmented Generation): Connection to local documents and customer databases

### Services

* Initial setup and configuration (on-site or remote)
* Ongoing model updates and optimizations
* Technical support (tiered by subscription level)
* Employee training
* Optional fine-tuning on customer data
* Proactive monitoring and maintenance

***

## 5\. Business Model & Pricing

### Overview

PrivateMind combines one-time hardware revenue with recurring service income. The focus is on the subscription model, which ensures predictable revenue and long-term customer retention.

### Option A: Hardware Purchase + Service Subscription (separate)

**Hardware (one-time):**

| Product line | Configuration | Retail price (approx.) | Hardware margin |
| ------------ | ------------- | ---------------------- | --------------- |
| PrivateMind Standard | 1x GX10, 1TB | €3,800 | \~€750 |
| PrivateMind Professional | 1x GX10, 2TB | €4,500 | \~€950 |
| PrivateMind Premium | 2x GX10 Cluster, 2TB each | €9,500 | \~€1,400 + €500 cluster setup |

**Service subscription (monthly):**

|  | **Starter** | **Professional** | **Enterprise** |
| --- | ------- | ------------ | ---------- |
| **Monthly price** | €149 | €349 | €699 |
| Pre-configured models | Basic set (3-5 models) | Extended set (8-10 models) | Custom selection |
| Updates | Quarterly | Monthly | Continuous |
| Support | Email, 48h response | Email + phone, 24h | Priority + remote access, 4h SLA |
| Monitoring | Basic dashboard | Dashboard + alerts | Proactive monitoring |
| Model tuning | - | Self-service with guidance | Included by PrivateMind |
| RAG setup | Documentation | Setup assistance | Full setup included |
| Clustering | - | Available as add-on | Included setup + maintenance |
| Training | Quickstart guide | 2h onboarding | Workshop + ongoing consulting |
| **Minimum term** | 12 months | 12 months | 12 months |

### Option B: All-Inclusive Bundle (Leasing + Service)

Hardware and service bundled in a single monthly payment. Tax-efficient for SMEs: pure operating expense, immediately deductible.

|  | **Bundle Standard** | **Bundle Professional** | **Bundle Premium** |
| --- | --------------- | ------------------- | -------------- |
| Hardware | 1x GX10, 1TB | 1x GX10, 2TB | 2x GX10 Cluster, 2TB each |
| Service level | Starter | Professional | Enterprise |
| **Monthly price** | €299 | €499 | €999 |
| **Term** | 36 months | 36 months | 36 months |
| After term | Hardware transfers to customer, service subscription continues | same | same |

**Recommendation:** Offer both options in parallel.

### Revenue Streams

1. **Hardware margin**: approx. €750-1,900 per sale
2. **Monthly subscription revenue**: €149-999 per customer
3. **One-time setup fees**: €500-2,000
4. **Optional add-on services**: Fine-tuning projects, integration work, training sessions

***

## 6\. Marketing & Sales

### Sales Strategy

**Phase 1 (Month 1-6): Direct Sales**

* Personal outreach in DACH region
* Target: Law firms, tax advisors, consultancies, medical practices
* Pilot installations with 3-5 reference customers
* Build case studies and testimonials

**Phase 2 (Month 6-12): European Expansion**

* English-language website with online inquiry form and configurator
* Content marketing: Blog, LinkedIn, articles on "AI for SMEs" and "GDPR-compliant AI"
* Partnerships with IT service providers across Europe
* Presence at European SME digitalization events

**Phase 3 (from Month 12): Growth**

* Pan-European sales through partner network
* Webinars and online demos (English)
* Referral program for existing customers
* Localized landing pages for key markets

### Positioning & Messaging

* "Your data. Your AI. On your desk."
* "AI for European business - no cloud, no risk."
* "The AI department that fits any budget."
* "Built in Europe. Stays in your office."

### Language Strategy

| Channel | Language |
| ------- | -------- |
| Website | English (primary), German (secondary) |
| Sales materials & offers | English |
| Technical support | English (primary), German |
| Documentation & guides | English |
| Content marketing | English |
| Local events (DACH) | German as needed |

***

## 7\. Organization & Structure

### Founder

**Raffael** \- Software developer with decades of experience in the IT industry\. Combines deep technical know\-how with practical execution capability\. Responsible for product development\, technical support\, and business management\.

### Starting Setup (One-Person GmbH)

In the founding phase, the founder covers all roles:

* Business management and sales
* Technical configuration and support
* Software development (dashboard, update pipeline)
* Marketing and customer communication

### Scaling Plan

| Customer count | Staff | Roles |
| -------------- | ----- | ----- |
| 1-10 | 1 (founder) | Everything |
| 10-25 | 2-3 | + Technical support, sales |
| 25-50 | 4-6 | + Developer, marketing |
| 50+ | 7+ | Team leads, account managers |

### Location Advantage: Dresden

* Personnel costs 20-30% below western German cities
* Silicon Saxony high-tech cluster on the doorstep
* dresden\|exists startup ecosystem support
* Combined with GRW wage cost subsidies, this provides a genuine competitive advantage for scaling

***

## 8\. Financial Planning

### Founding Costs (one-time)

| Item | Amount |
| ---- | ------ |
| GmbH formation (notary, registration, share capital) | €25,000 + approx. €1,500 ancillary costs |
| Demo/test unit (1x GX10, 2TB) | €3,550 |
| Website & branding | €3,000 - 6,000 |
| Software development (Dashboard MVP) | Founder's own work |
| Legal advice (T&Cs, contracts, data protection) | €3,000 - 5,000 |
| Initial office/equipment | €1,000 |
| **Total** | **approx. €37,000 - 42,000** |

### Monthly Fixed Costs (starting phase)

| Item | Amount/month |
| ---- | ------------ |
| Managing director salary | €3,000 - 4,000 |
| Office/coworking | €300 - 500 |
| Insurance (liability etc.) | €150 - 300 |
| Software licenses & tools | €100 - 200 |
| Marketing & advertising | €300 - 700 |
| Phone, internet, misc. | €100 |
| **Total** | **approx. €4,000 - 5,800/month** |

### Revenue Scenarios (Year 1)

**Conservative Scenario (10 customers in year 1):**

Assumption: 6x Standard, 3x Professional, 1x Premium

| Revenue | Calculation | Annual amount |
| ------- | ----------- | ------------- |
| Hardware sales | 6x€3,800 + 3x€4,500 + 1x€9,500 | €46,300 |
| Hardware margin thereof |  | approx. €8,550 |
| Setup fees | 10 x €750 (avg.) | €7,500 |
| Subscription revenue (staggered over 12 months) | avg. €249/mo, growing | approx. €18,000 |
| **Total revenue (margin + setup + subscriptions)** |  | **approx. €34,000** |
| **Monthly costs x 12** |  | **approx. €48,000 - 70,000** |
| **Result Year 1** |  | **approx. -€14,000 to -€36,000** |

*Year 1 is an investment phase. Break-even is realistically reached during year 2.*

**Optimistic Scenario (25 customers in year 1):**

Assumption: 12x Standard, 9x Professional, 4x Premium

| Revenue | Calculation | Annual amount |
| ------- | ----------- | ------------- |
| Hardware sales | 12x€3,800 + 9x€4,500 + 4x€9,500 | €124,100 |
| Hardware margin thereof |  | approx. €23,200 |
| Setup fees | 25 x €1,000 (avg.) | €25,000 |
| Subscription revenue (staggered) | avg. €349/mo, growing | approx. €62,000 |
| **Total revenue (margin + setup + subscriptions)** |  | **approx. €110,000** |
| **Result Year 1** |  | **approx. +€40,000 to +€62,000** |

### Long-term Revenue Development

|  | Year 1 | Year 2 | Year 3 |
| --- | ------ | ------ | ------ |
| Customers (cumulative) | 10-25 | 30-60 | 70-150 |
| Monthly Recurring Revenue | €2,500-8,700 | €10,000-25,000 | €25,000-60,000 |
| Annual revenue (margin+subs+setup) | €34-110k | €150-350k | €400-750k |

**Key metric:** From approximately 15 customers in the Professional tier, recurring revenue covers monthly fixed costs.

***

## 9\. Risk Analysis

| Risk | Probability | Impact | Mitigation |
| ---- | ----------- | ------ | ---------- |
| **LPDDR5X prices continue rising** | High | Hardware becomes more expensive, margins shrink | Long-term purchasing agreements, bundle model buffers price fluctuations |
| **NVIDIA releases cheaper GB10 successor** | Medium | Lower-priced competing products | Advantage: PrivateMind can switch quickly, since value lies in the service |
| **Cloud AI becomes "secure enough"** | Low-Medium | Weakens data protection argument | Local solution remains relevant for regulated industries; diversify positioning |
| **Large IT service providers copy the model** | Medium | Competitive pressure | Use first-mover advantage, defend niche through specialization and customer proximity |
| **Slow customer acquisition** | Medium-High | Cash flow issues in year 1 | Low fixed costs, win pilot customers early, use founding grants |
| **Support complexity with European customers** | Medium | Time zones, languages, remote support | Standardize processes early, invest in monitoring/automation, English-first approach |
| **Dependency on NVIDIA/ASUS** | High | Supply shortages, pricing outside of control | Multiple OEM sourcing options (Dell, Lenovo as backup), focus on service value |
| **Cross-border regulatory complexity** | Medium | Different national regulations within EU | GDPR applies EU-wide (core advantage), get legal advice on country-specific requirements |

### Strategic Risk Mitigation

* **Value lies in service, not hardware.** Even if a customer buys the same hardware elsewhere, they don't have a functioning system without PrivateMind's support, updates, and expertise.
* **Low fixed costs at start.** A one-person GmbH can operate with minimal overhead.
* **Recurring revenue smooths fluctuations.** Once a critical mass of subscribers is reached, the business becomes predictable.
* **European scope diversifies risk.** Not dependent on a single national market.

***

## 10\. Milestones & Timeline

| Period | Milestone | Activities |
| ------ | --------- | ---------- |
| **Month 1-2** | Foundation & Setup | Establish GmbH, business account, insurance, secure domain, procure demo unit |
| **Month 2-4** | Product Development | Develop PrivateMind Dashboard MVP, build update pipeline, define standard configurations, curate model selection |
| **Month 3-5** | Pilot Phase | Win 3-5 pilot customers in DACH region, collect feedback, validate processes |
| **Month 5-6** | Market Launch | English website live, pricing finalized, first paying customers, create case studies |
| **Month 6-9** | European Expansion | Content marketing in English, LinkedIn outreach, first partnerships with IT service providers in NL/Nordics/UK |
| **Month 9-12** | Scaling | Standardize processes, potentially first employee (support), 10-15 active customers across Europe |
| **Year 2** | Growth | Pan-European sales, partner network, 30-60 customers, reach break-even |
| **Year 3** | Consolidation | Build team, expand product portfolio, 70+ customers, sustainable profitability |

***

## 11\. Funding Opportunities

### A. Federal (Germany-wide)

**Gründungszuschuss (Federal Employment Agency)** \- PRIMARY TARGET

* For founders transitioning from unemployment
* Phase 1: 6 months, continuation of unemployment benefit + €300/month
* Phase 2: 9 months, €300/month (upon application)
* Total duration: up to 15 months
* *Highly relevant: Founder is currently registered as unemployed*

**KfW Startup Loans**

* ERP-Gründerkredit StartGeld: up to €125,000
* Low interest, partially guaranteed by KfW

**NVIDIA Inception Program**

* Free technical resources, cloud credits, network access for AI startups
* No equity required

### B. State of Saxony (Freistaat Sachsen)

**InnoStartBonus**

* €1,050/month for up to 12 months, plus €150/month per dependent child
* For innovative founders with residence in Saxony
* PrivateMind clearly qualifies as a business model innovation
* Cannot be combined with other programs financing living costs (likely excludes simultaneous Gründungszuschuss - needs verification)
* Applied via futureSAX platform

**GRW RIGA Investment Grant**

* For small companies: up to 50% of eligible investment volume
* Minimum investment in Dresden: €70,000
* Dresden is classified as a D-Fördergebiet (base rate \~20% for small companies)
* Can be applied to hardware purchases, office equipment, initial inventory
* Requires creation or preservation of permanent jobs
* Applied via SAB (Sächsische Aufbaubank)

**Sachsenkredit "Gründen und Wachsen"**

* Subsidized loans for startups, business takeovers, and growth projects
* Up to €5 million, with a base repayment subsidy of 6%, up to 10% for specific projects
* Applied via Hausbank (routing through SAB)

**SAB Mikrodarlehen**

* Micro loans up to €20,000, directly at SAB
* Can be applied before or up to three years after founding
* Repayment within five years

**Technologiegründerfonds Sachsen (TGFS)**

* Venture capital: TGFS Basic up to €500,000, TGFS Plus up to €4 million
* Equity investment - relevant for later growth phase

**ESF Plus Gründungsberatung**

* €2,000 grant for founding consultation services

**MBG Sachsen (Mittelständische Beteiligungsgesellschaft)**

* Silent partnerships from €25,000 to €1 million
* Strengthens equity base without giving up control

### C. Dresden-Specific Advantages

**Silicon Saxony e.V.**

* Industry cluster for microelectronics, software, and automation based in Dresden
* Largest high-tech network in eastern Germany
* Access to large companies, suppliers, investors, and matchmaking

**dresden\|exists**

* Startup support from TU Dresden
* Helps with SAB applications, networking, mentoring

### D. EU Funding

* **Horizon Europe / European Innovation Council (EIC)**: For AI/digital innovation projects
* **Digital Europe Programme**: Supports AI deployment in European SMEs
* *More complex to apply for, better suited for year 2-3*

### Recommended Funding Strategy

**Phase 1 (Pre-founding):** Apply for Gründungszuschuss (priority!), ESF Plus Gründungsberatung, evaluate InnoStartBonus combinability

**Phase 2 (Founding):** SAB Mikrodarlehen, Sachsenkredit if needed, join Silicon Saxony, apply to NVIDIA Inception

**Phase 3 (Growth):** GRW RIGA investment grant (once €70k+ invested), TGFS or MBG Sachsen for growth capital, explore EU funding

***

## 12\. Open Items & Next Steps

### Business Model

* [ ] Hardware: sell, lease, or offer both? Check tax implications across key EU markets
* [ ] Minimum subscription terms (12 vs. 24 months)
* [ ] Update delivery: remote push vs. customer-initiated vs. hybrid
* [ ] Validate pricing with real market data (conversations with potential customers)
* [ ] Cross-border payment and invoicing setup (EU VAT / OSS)

### Product

* [ ] PrivateMind Dashboard: define requirements, plan MVP
* [ ] Define standard model selection (which LLMs for which industries)
* [ ] Develop and test RAG pipeline
* [ ] Design and implement update mechanism

### Legal

* [ ] GmbH formation: notary, articles of association
* [ ] T&Cs and service contracts (English, EU-compliant)
* [ ] Data protection concept (GDPR documentation for customers)
* [ ] Liability questions (AI-generated content, warranties)
* [ ] Cross-border B2B terms for EU customers
* [ ] VAT registration / One-Stop-Shop (OSS) for EU sales

### Sales

* [ ] Identify first 5 potential pilot customers (DACH region)
* [ ] Create pitch deck / presentation (English)
* [ ] Website concept and domain (privatemind.eu / privatemind.de)

### Finance

* [ ] Apply for Gründungszuschuss at the Federal Employment Agency
* [ ] Create detailed liquidity plan (month by month, 24 months)
* [ ] Consult tax advisor (VAT, leasing models, corporation tax, EU cross-border)

***

## Appendix

### A. Technical Comparison: Why ASUS Ascent GX10

| Platform | Result |
| -------- | ------ |
| **ASUS Ascent GX10 (DGX Spark)** | ✅ Selected. Cheapest GB10 system (from \~€3,050), three SSD variants, optimized for LLM inference, clustering possible |
| NVIDIA DGX Spark Founders | ⚠️ Alternative. Identical hardware, but only 4TB config, €4,800 (EU Marketplace) |
| NVIDIA Jetson Thor (T5000/T4000) | ❌ Eliminated. Optimized for robotics, weak LLM performance (Llama 70B: \~10 tok/s) |
| NVIDIA Jetson AGX Orin | ❌ Eliminated. Ampere architecture (2 gen. old), max 64GB RAM |
| Dell Pro Max GB10 / Lenovo PGX / HP ZGX | ⚠️ Backup suppliers. Same hardware, higher price, but with manufacturer support |

### B. Market Data Sources

* NVIDIA product pages and Marketplace
* ServeTheHome reviews (ASUS Ascent GX10, Jetson Thor)
* Tom's Hardware, TechRadar, VideoCardz, CNX Software
* Eurostat SME statistics
* Newegg, Amazon - current market prices (as of April 2026)

***

*All prices in euros (EUR). Where no official EU prices are available, US list prices have been converted at the current exchange rate (approx. €0.93/$1, as of April 2026). This document is a living draft. All figures are estimates and must be validated through market research and professional advice (tax advisor, lawyer).*