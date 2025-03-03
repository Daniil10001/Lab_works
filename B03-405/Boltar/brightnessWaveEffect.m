function  adjustedImage = brightnessWaveEffect(inputImage, frequency, amplitude)
    % Получаем размеры изображения
    [rows, cols, ~] = size(inputImage);
    
    % Создаем матрицу для хранения коэффициентов яркости
    brightnessFactor = zeros(rows, cols);
    baseBrightness = 1;
    
    for r = 1:rows
        for c = 1:cols
            % Расчет расстояния от левого верхнего угла
            distance = sqrt(r^2 + c^2);
            
            % Вычисление коэффициента яркости с использованием синусоиды
            brightnessFactor(r, c) = baseBrightness + amplitude * sin(2 * pi * frequency * distance);
        end
    end
    
    % Применяем коэффициенты яркости к изображению
    for channel = 1:3
        adjustedImage(:, :, channel) = uint8(double(inputImage(:, :, channel)) .* brightnessFactor);
    end
end

