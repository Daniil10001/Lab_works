function im1 = bright_wave(image, lambda, alpha)
    [rows, cols, channels] = size(image);
    [X, Y] = meshgrid(1:cols, 1:rows);
    x_center = (cols + 1) / 2;
    y_center = (rows + 1) / 2;
    r = sqrt((X - x_center).^2 + (Y - y_center).^2);
    factor = 1 + alpha * sin(2 * pi * r / lambda);
    im1 = image .* factor;
    im1 = min(max(im1, 0), 1);
end