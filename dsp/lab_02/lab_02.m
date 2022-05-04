function lab_02()
T = 2.0;
A = 1.0;
sigma = 0.5;

% Границы расчета
mult = 5;
t = -mult:0.05:mult;

% Расчет импульсных функций
x1 = zeros(size(t));
x1(abs(t) - T < 0) = 1;
x1(abs(t) == T) = 0.5;
x2 = A * exp(-(t/sigma).^2);

% FFT
yx1 = fft(x1);
yx2 = fft(x2);

yg1 = fftshift(yx1);
yg2 = fftshift(yx2);

% DFT
zx1 = dft(x1);
zx2 = dft(x2);

zg1 = fftshift(zx1);
zg2 = fftshift(zx2);

M = 0:length(t)-1;


