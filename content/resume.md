---
title: "Resume"
layout: "single"
url: "/resume/"
summary: "Ted Strzalkowski - Staff Software Engineer"
showReadingTime: false
showDate: false
name: "Ted F. Strzalkowski"
contact: "Boulder Creek, CA  ·  contact@tedski.net  ·  linkedin.com/in/tedski  ·  github.com/tedski"
---

[Download PDF](/Resume-TedStrzalkowski.pdf)

# Ted F. Strzalkowski

Staff Engineer · Platform, Infrastructure & Developer Tooling  
Boulder Creek, CA · [linkedin.com/in/tedski](https://linkedin.com/in/tedski) · [github.com/tedski](https://github.com/tedski)

---

## Summary

Staff engineer specializing in platform, infrastructure, and developer tooling with a decade of SRE experience across large-scale distributed systems. I build things that make engineers more effective, and I treat user feedback, adoption metrics, and documentation as first-class engineering concerns measured with the same rigor as uptime. My leadership instincts were forged in the U.S. Coast Guard and as a Firefighter, where the Incident Command System shaped how I approach reliability: clear ownership, documented procedures, structured on-call culture, and coordination under pressure. I spent my recent career break deepening my practice in agentic AI development, applying a structured research-plan-implement-test methodology to keep AI-assisted work genuinely maintainable.

---

## Experience

### Career Break — Personal Development & Projects
*Apr 2025 – Present · Boulder Creek, CA*

- Extended a home automation system spanning Z-Wave, Zigbee, and custom ESP32 hardware, building local-first replacements for cloud-dependent devices including a garage door controller, Somfy shade driver via LoRa, smart gate opener, and a circuit-level power monitor using current transformers. Iterated on automations based on feedback from household members and guests, with a design principle of graceful fallback to fully manual operation.
- Created [TideSignal](https://github.com/tedski/tidesignal), an agentic AI application built entirely through Claude Code, applying a research-plan-implement-test methodology to explore agentic development patterns with sub-agents and structured workflows.
- Migrated a legacy shell-script-based fleet orchestration system to IaC using Ansible and Docker Compose ([efnetmoto-fleet](https://github.com/efnetmoto/efnetmoto-fleet)), closing years of personal tech debt.
- Applied production-grade operational practices throughout: documentation-driven development, no single points of failure, and infrastructure designed for handoff — same engineering rigor as enterprise systems, different scale.
- Built Jupyter notebooks to model solar PV and battery ROI using local weather station data and programmatic rate cards ([solar-roi](https://github.com/tedski/solar-roi)).

### Staff Site Reliability Engineer → Staff Software Engineer
*2019 – Apr 2025 · LinkedIn · Remote*

#### Capacity Engineering (2021 – 2025)

- Tech lead for Platform Experience within Capacity Engineering, owning all user-facing tooling and feedback pipelines serving 1,000+ engineers across tens of thousands of services; contributed as a peer lead on Forecasting & Measurements, helping shape direction across sub-teams through structured user interviews and roadmap planning.
- Drove rightsizing and predictive auto-scaling adoption to 85% of services by building web and CLI interfaces shaped by user research — SREs preferred CLI, product engineers preferred web.
- Evangelized model outputs to service owners, building confidence in automated recommendations and dispelling skepticism to sustain adoption across the org.
- Trusted by directors and VPs as the go-to analyst for capacity investigations, using Spark, Trino, and Python to validate forecasts, diagnose anomalies, and independently verify performance improvement claims before organizational commitments were made.
- Designed a standardized metrics framework for Capacity Engineering, classifying signals into user, capacity, and health indicators to improve decision-making and dashboard consistency across the org; began implementing the ingestion pipeline before departing.
- Authored internal observability guidance adopted across Capacity Engineering, standardizing Grafana-compatible metrics and improving telemetry consistency across the team.

#### Resilience Engineering — Waterbear (2019 – 2021) · promoted to Staff 2019

- Founding engineer on the Resilience Engineering team; co-built LinkedOut, LinkedIn's internal failure injection platform designed to shift resilience testing left and give developers the tooling to validate their own services.
- Contributed backend and UI features to LinkedOut's web platform and maintained the Chrome extension, evangelizing the full platform — automated testing, group failure injection, and ad-hoc testing workflows — to drive adoption across engineering teams.
- Led development of LinkedOut's automated test platform: scheduled Selenium-based runs across all failure modes at every call graph edge, with a custom image-comparison algorithm to surface visual regressions automatically.
- Served as tech lead for user research and roadmap prioritization; quarterly ambassador program embedded rotating engineers as co-designers, shifting LinkedOut's culture from top-down chaos tooling to developer-owned resilience testing.
- Greenfielded a load balancer tuning tool using PySpark over historical Hive traffic data to recommend optimal tunable values per service, reducing manual tuning toil across infrastructure teams.

### Senior Site Reliability Engineer
*Jun 2016 – 2019 · LinkedIn · San Francisco Bay Area*

- Bridged SRE and product engineering for the Content Org by shifting operational ownership to developers through tooling training and self-service runbooks, eliminating SRE release gatekeeping and increasing team autonomy and release velocity across the Publishing and Pulse stacks.
- Transitioned to the founding Resilience Engineering / Waterbear team in 2018, contributing to early LinkedOut platform development ahead of Staff promotion.

### Senior Systems Engineer
*Jul 2014 – Jun 2016 · Lucid Design Group (Atrius) · Oakland, CA*

- Re-architected infrastructure for a fast-growing startup; introduced configuration management, containerization, and zero-touch deployment pipelines.
- Built and open-sourced internal automation tooling; evangelized DevOps and agile practices across engineering.

### Lead Systems Administrator
*Apr 2013 – Jul 2014 · eBay Inc · San Francisco Bay Area*

- Led DevOps team of 10; overhauled change review process using GitHub PRs and Jira, improving deployment pipeline efficiency.
- Implemented infrastructure automation and config management via SaltStack; authored and open-sourced custom Salt modules.

### Systems Administrator
*Jul 2011 – Apr 2013 · Shopping.com (an eBay Company) · Brisbane, CA*

- Re-architected feed generation application reducing server footprint from 100 to 12 nodes while improving reliability, resulting in a 95% reduction in escalations.
- Automated software releases and server provisioning, cutting deployment time 25% and new machine delivery time 50%.

### Various Roles — Maritime Operations & Systems Administration
*2000 – 2009 · U.S. Coast Guard · San Francisco Bay Area / New York*

- Response missions: nine-year veteran conducting search and rescue, law enforcement, and homeland security operations in the San Francisco Bay Area — 800+ SAR missions, small team leadership, and sustained performance under high-pressure conditions.
- Prevention missions: Waterfront Facility Inspector at the Port of New York, leading a team of 12 managing security and safety audits across 47 facilities; implemented a standardized biometric identification system at 50+ sites while maintaining uninterrupted flow of $132B in annual trade.

---

## Areas of Expertise

Site Reliability Engineering · Developer Tooling & Platform · Resilience & Chaos Engineering · Agentic AI Development · Capacity Engineering · Distributed Systems Observability
