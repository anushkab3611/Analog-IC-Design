# Analog-IC-Design

This repository contain the design,simulation and analysi of an interface circuit for a MEMS microphone,developed during an internship on Analog IC Design.The project involved::

- Modeling the MEMS microphone with a Thevenin equivalent.
- Design, simulation, and circuit characterization of a low-noise Op-Amp preamplifier (TI OPA344 reference) using ngspice.
- Schematic capture using Xschem and circuit analysis (DC/transient) with ngspice.
- Application of passive RLC modeling, KCL, KVL, and superposition.
- Network analysis plus Thevenin/Norton transformations for optimized power transfer.
- Analog building block design/analysis: current mirrors, differential amplifiers, and MOS characteristics.
- Complete system simulation and robust USB-MIDI audio characterization.

  
## USB Microphone System
<img src="circuit/Fig-d1-1-USBmic.png" width="600"/>



[MEMS capacitive microphone datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf)
## Thevenin equivalent model calculation


- **Sensitivity:** -44 dBV/Pa  
- **Condition:** 94 dB SPL at 1 kHz (equivalent to 1 Pa sound pressure)  
- **Typical Voice Conversation Level:** ~60 dB SPL

 Vth (Voltage Threshold) Calculation

- Voice (Pa) = 10(60−94)/20=19.9×10⁻³Pa  
- Output (Vpk) = 2×Vrms=2×19.9×10⁻³Pa×10^(−44/20)=178μVpk  
- Vout−pk=0.178 mV

Rth (from datasheet) = 380 ohms  


- From schematic: Rin=5k, Rfb=300k, therefore Gain = 60  
- So output of the amplfier will be 60 x 0.178 mVpk = 10.68 mVpk  
- Sparkfun site states 100 mVpk probably assuming 10 times higher input signal i.e. Voice is 80 dB SPL
- Input high-pass frequency = 1/2πRC = 1/2π × 5k × 4.7μF = 6.77 Hz  
- Feedback Low-pass filter frequency = 1/2πRC = 1/2π × 300k × 27pF = 19.6 kHz  
- Input common-mode filter = 1/2πRC = 1/2π × 10k × 1μF = 15.9 Hz


<img src="circuit/Fig-d2-1-mic-analysis.png" width="600"/>

## XSCHEM SIMULATIONS
   ## *1.Thevenin Equivalent model of the microphone*

  
   <img src="circuit/Screenshot%202025-06-07%20124834.png" width="600"/> <img src="circuit/Screenshot%202025-08-01%20235421.png" width="600"/>


   
   ## *2.High-Pass*

  
   <img src="circuit/i4.jpg" width="600"/>

    

  ## *3.NMOS Operational Amplifier*


   <img src="circuit/i5.png" width="600"/>

     
   
  ## *4.Current Mirror*


  <img src="circuit/i6.png" width="600"/>

     

  ## *5.Mictest*
 
   
   <img src="circuit/i7.png" width="600"/>



   
## NGSPICE RESULTS

  ## *1.Simple-high pass filter*
  
   
   <img src="circuit/i1.jpg" width="600"/>


  ## *2.Transient experiment: rise, fall, delay, time period*

  <img src="circuit/i8.png" width="600"/>


  ## *3.Diode experiment*
  
   <img src="circuit/i10.png" width="600"/>

    
## MAGIC
## *1.CMOS Inverter*
  <img src="circuit/i11.png" width="600"/>
   
