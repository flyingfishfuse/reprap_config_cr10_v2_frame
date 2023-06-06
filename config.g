; Configuration file for Duet 3 Mini 5+ (firmware version 3.3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.3.16 on Tue May 16 2023 12:11:52 GMT-0400 (Eastern Daylight Time)
; modified by MEEPERSQUEAKmcgeegison the fourth esq.
; ========== PINOUT OF CR10V2 WITH BIQU H2 HOTEND ============== ;

; MAX31865  | Duet3D MINI5+
; 1 NC      | -
; 2 SDI     | 5 MOSI
; 3 CLK     | 4 SCK
; 4 CS      | 1 CS2 or 3CS1
; 5 SDO     | 6 MISO
; 6 NC      | -
; 7 NC      | -
; 8 NC      | -
; 9 GND     | 2 GND
; 10 V_IN   | 8 +3.3V
; 15 GND    | -
; 16 NC     | - 

; 11 FORCE- common to 12 RTDIN- | -
; 13 RTDIN+ common to 14 FORCE+ | -

; STEPPERS
;====================
; X           | driver 4
; Y           | driver 3
; Z           | driver 2 and 0
; EXTRUDER    | driver 1
;
;
;
;
; ======== general usage and tuning =========
;------------------------------------------------------------------------------------------------------
; To PID auto-tune the bed heater:
;   M303 H0 S45
;  --------------
; RESULTS:
; 	M303 H0 S45
;   Auto tuning heater 0 using target temperature 45.0°C and PWM 1.00 - do not leave printer unattended

; Auto tuning heater 0 completed after 3 idle and 5 tuning cycles in 1507 seconds. This heater needs the following M307 command:
; M307 H0 R0.288 K0.439:0.000 D7.01 E1.35 S1.00 B0
; Send M500 to save this command in config-override.g
; OR
; place the above line of code in this config.g file, replacing the existing command for the same heater
;------------------------------------------------------------------------------------------------------
;
; To PID auto-tune the extruder nozzle heater:
;   M303 H1 S45
;  --------------
; RESULTS:
; 5/18/2023, 1:17:27 PM	Auto tuning heater 1 completed after 3 idle and 6 tuning cycles in 4418 seconds. This heater needs the following M307 command:
;  M307 H1 R2.313 K0.471:0.000 D17.93 E1.35 S1.00 B0 V24.1
;  M307 H1 R3.025 K0.624:0.000 D10.44 E1.35 S1.00 B0 V24.1
; Send M500 to save this command in config-override.g
; 5/18/2023, 12:37:13 PM	Auto tune starting phase 3, measuring
; 5/18/2023, 12:04:03 PM	Auto tune starting phase 2, settling
; 5/18/2023, 12:03:54 PM	Auto tune starting phase 1, heating up
; 5/18/2023, 12:03:48 PM	M303 H1 S45
; Auto tuning heater 1 using target temperature 45.0°C and PWM 1.00 - do not leave printer unattended
;====================================================================================================
;
; EXTRUDER USAGE AND TUNING
;   the basic command to extrude is the following
;   
;  G1 H0 E5
;  G1 is "move stepper"
;  H0 is "use too"
; General preferences
