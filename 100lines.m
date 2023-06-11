figure; % создание нового графика

for k = 1:100 % для каждой линии
    % генерация начальной и конечной точек
    x1 = randi([0, 1000]);
    y1 = randi([0, 1000]);
    x2 = randi([0, 1000]);
    y2 = randi([0, 1000]);

    % расчет длины линии
    dx = x2 - x1;
    dy = y2 - y1;
    len = max(abs(dx), abs(dy));

    % расчет приращений x и y
    if len ~= 0
        sx = dx / len;
        sy = dy / len;
    else
        sx = 0;
        sy = 0;
    end

    % отображение линии на графике
    x = x1;
    y = y1;
    line_x = zeros(1, len+1);
    line_y = zeros(1, len+1);
    for j = 1:len+1
        line_x(j) = x;
        line_y(j) = y;
        x = x + sx;
        y = y + sy;
    end
    plot(line_x, line_y);
    hold on % добавить линию на текущий график
end
