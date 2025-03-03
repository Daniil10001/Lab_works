R = IM1(:,:,1);
row_idx = round(size(R,1)/2);  % индекс «серединной» строки
y_vals = double(R(row_idx, :));  % интенсивности пикселей в этой строке
x_vals = 1 : length(y_vals);
degree = 5;                      
p = polyfit(x_vals, y_vals, degree);
x_fine = linspace(1, length(y_vals), 200);
y_fine = polyval(p, x_fine);
figure;
plot(x_vals, y_vals, 'ro', 'MarkerFaceColor', 'black');  
hold on;
plot(x_fine, y_fine, 'b-', 'LineWidth', 2);          
grid on;
legend('Pixel intensities','Polynomial fit','Location','best');
title(sprintf('Row %d of the reduced image (Red channel)', row_idx));
xlabel('Pixel column index');
ylabel('Intensity');