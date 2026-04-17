clc;
clear;
clf();

// Range of gain K
K_values = 0:1:100;

// Storage for all poles
real_parts = [];
imag_parts = [];

// Storage for critical points (Re ≈ 0)
crit_real = [];
crit_imag = [];

// Loop over K values
for K = K_values
    
    // Characteristic equation: s^3 + 7s^2 + 10s + K = 0
    coeff = [1 7 10 K];
    
    // Compute roots (poles)
    r = roots(coeff);
    
    // Store all poles for plotting
    real_parts = [real_parts; real(r)'];
    imag_parts = [imag_parts; imag(r)'];
    
    // Check for stability boundary (Re ≈ 0)
    for i = 1:3
        if abs(real(r(i))) < 0.01 then
            
            // Store critical points
            crit_real = [crit_real real(r(i))];
            crit_imag = [crit_imag imag(r(i))];
            
            // Display K and corresponding root
            disp("Critical region near K = " + string(K));
            disp("Root:");
            disp(r(i));
        end
    end
    
end

// Plot all pole movement
plot(real_parts, imag_parts, 'b.');
xlabel("Real Axis");
ylabel("Imaginary Axis");
title("Pole Movement with Gain K");

// Highlight critical points
plot(crit_real, crit_imag, 'ro');

// Draw imaginary axis (Re = 0)
xpoly([0 0], [-5 5], "lines");

// Legend
legend(["All Poles", "Critical Points"]);
