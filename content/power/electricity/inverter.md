---
title: Inverter
---

## Concept
### DC to AC UPS inverter
- Inputs:
  - DC power from battery, possibly also from other sources (solar panel, wind etc..)
  - AC power from the grid
- Output:
  - AC power fed to downstream loads (computer, lights etc..) and never to other parts getting "raw power" (boiler etc..). This output is never fed to the AC input (don't want to supply the grid or electrocute repairmen!).
- Processing:
  - AC power, when available, is used to charge battery and to run downstream loads.
  - When AC power is unavailable, battery is drained to run downstream loads.

## Non-grid-tied
### Power requirement calculation
- [अत्र](https://docs.google.com/spreadsheets/d/1S8vd3QOw0CZ0H9xyblz0Fjt7q_ZV9XEAOMKTrvv8XEg/edit#gid=737255309)। 
- 890W in 2020 v-nilaya. VA rating of UPS at 70% efficiency - 1260VA.
- Battery capacity - 2522 Wh or 210 Ah at 12 V. 

## Grid tied
- grid-tie inverters must accurately match the voltage and phase of the grid sine wave AC waveform.
- There are also Grid-tied battery-backup inverters.

## Inverter features
- Number of AC phases supported
- Supported input and output power
  - Solar inverters are usually selected 20% lower than PV array peak power, due to solar array losses.
- Supported input and output voltage range (esp minimum input voltage)
- Supported input and output current.
- Output waveform - Sinewave, quasi-sinewave, square wave.
- Output frequency – 50Hz in Europe, 60 Hz in the USA.
- MPPT input voltage range.
- Number of MPPTs (can connect and optimize multiple power sources separately)
- Good enclosures - IP65 for protection from dust and water.
- MCB Protection: the grid power always has voltage fluctuations, chances for short circuit, MCB Saves Inverter from High Voltage and Short circuit failures.
- Noise
- Good LCD displays
- Remote monitoring: Mobile phone wifi interface to monitor power supply/ generation.
- Bypass switch (won't require swapping plugs)

### Maximum power point tracking MPPT
- Helps inverter to extract max power from panels.
- Problem: Consider a 130-watt solar panel (7.39 amps at 17.6 volts). If these 7.4 Amps are used to charge a 12V battery, we are finally using  88.8 watts. The remainder is 48W lost as heat.
- Solution: The charge controller looks at the output of the panels and compares it to the battery voltage. It then figures out what is the best power that the panel can put out to charge the battery. It takes this and converts it to best voltage to get maximum AMPS into the battery. 

## Input stacking
- For general intro, see [battery](../battery) page.

### Series connection
- String inverters are also known as ‘central inverters’. For example, they treat the solar array as one single solar panel.
- Disadvantage is that failure of one power source (solar panel shading) would cause a relatively big drop in voltage (possibly below the minimum starting voltage of the inverter) - MPPT may compensate to some extant. Shading of 9% of the solar array results in about 54% decrease in its power output (MPPT use unknown)!


### Microinverters
- Here, per inverter inputs are not stacked. Each power source may have its own inverter
- Costlier than central inverters (when you add up).
- Lower power eliminates many problems.
- Allow mounting PV modules on different surfaces and facing different directions.
- Can optimize performance and monitor better.
- Safer, both to install and maintain, since avoiding wiring lots of panels in series (when DC voltage can increase up to hundreds of volts) eliminates the need of high voltage DC wiring.
- much longer durability than central inverters due to the fact that they are not exposed to such a high power and heat like central inverters. micro inverters come with a more extended warranty – 20-25 years – compared to the typical 10 years guarantee of their string counterparts.
- High rated microinverter manufacturers include: Enphase.

#### Micro parallel inverters
- A micro parallel inverter is a smart device containing four individual channels that can be connected to four separate solar panels. Each channel acts as a single micro inverter and can track the performance of its solar panel by using MPPT.