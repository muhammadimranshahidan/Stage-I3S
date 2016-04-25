% Lecture des donnees depuis le fichier du logiciel 
load Ibra002.mat;

ac1x = Respiratory_Sensor_Port_COM3_Canal_0_g_Amplitude(1,1:end);
ac1y = Respiratory_Sensor_Port_COM3_Canal_1_g_Amplitude(1,1:end);
ac1z = Respiratory_Sensor_Port_COM3_Canal_2_g_Amplitude(1,1:end);

ac2x = Respiratory_Sensor_Port_COM3_Canal_3_g_Amplitude(1,1:end);
ac2y = Respiratory_Sensor_Port_COM3_Canal_4_g_Amplitude(1,1:end);
ac2z = Respiratory_Sensor_Port_COM3_Canal_5_g_Amplitude(1,1:end);

ac3x = Respiratory_Sensor_Port_COM3_Canal_6_g_Amplitude(1,1:end);
ac3y = Respiratory_Sensor_Port_COM3_Canal_7_g_Amplitude(1,1:end);
ac3z = Respiratory_Sensor_Port_COM3_Canal_8_g_Amplitude(1,1:end);

ac4x = Respiratory_Sensor_Port_COM3_Canal_9_g_Amplitude(1,1:end);
ac4y = Respiratory_Sensor_Port_COM3_Canal_10_g_Amplitude(1,1:end);
ac4z = Respiratory_Sensor_Port_COM3_Canal_11_g_Amplitude(1,1:end);

ac5x = Respiratory_Sensor_Port_COM3_Canal_12_g_Amplitude(1,1:end);
ac5y = Respiratory_Sensor_Port_COM3_Canal_13_g_Amplitude(1,1:end);
ac5z = Respiratory_Sensor_Port_COM3_Canal_14_g_Amplitude(1,1:end);

ac6x = Respiratory_Sensor_Port_COM3_Canal_15_g_Amplitude(1,1:end);
ac6y = Respiratory_Sensor_Port_COM3_Canal_16_g_Amplitude(1,1:end);
ac6z = Respiratory_Sensor_Port_COM3_Canal_17_g_Amplitude(1,1:end);

ac7x = Respiratory_Sensor_Port_COM3_Canal_18_g_Amplitude(1,1:end);
ac7y = Respiratory_Sensor_Port_COM3_Canal_19_g_Amplitude(1,1:end);
ac7z = Respiratory_Sensor_Port_COM3_Canal_20_g_Amplitude(1,1:end);

ac8x = Respiratory_Sensor_Port_COM3_Canal_21_g_Amplitude(1,1:end);
ac8y = Respiratory_Sensor_Port_COM3_Canal_22_g_Amplitude(1,1:end);
ac8z = Respiratory_Sensor_Port_COM3_Canal_23_g_Amplitude(1,1:end);

ac9x = Respiratory_Sensor_Port_COM3_Canal_24_g_Amplitude(1,1:end);
ac9y = Respiratory_Sensor_Port_COM3_Canal_25_g_Amplitude(1,1:end);
ac9z = Respiratory_Sensor_Port_COM3_Canal_26_g_Amplitude(1,1:end);

ac10x = Respiratory_Sensor_Port_COM3_Canal_27_g_Amplitude(1,1:end);
ac10y = Respiratory_Sensor_Port_COM3_Canal_28_g_Amplitude(1,1:end);
ac10z = Respiratory_Sensor_Port_COM3_Canal_29_g_Amplitude(1,1:end);

mask = Respiratory_Sensor_Port_COM3_Canal_30_in_H2O_Amplitude(1,1:end);

% Mise les 3 axes dans une matrice
ax = [ac1x;ac2x;ac3x;ac4x;ac5x;ac6x;ac7x;ac8x;ac9x;ac10x];

ay = [ac1y;ac2y;ac3y;ac4y;ac5y;ac6y;ac7y;ac8y;ac9y;ac10y];

az = [ac1z;ac2z;ac3z;ac4z;ac5z;ac6z;ac7z;ac8z;ac9z;ac10z];

save readacc.mat ax ay az mask 