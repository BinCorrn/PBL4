function [xe, xo, m] = evenodd(x, n)
    % Hàm phân tách tín hiệu thành phần chẵn và phần lẻ
    % x  - Tín hiệu đầu vào
    % n  - Chỉ số thời gian tương ứng với x[n]
    % xe - Phần chẵn của tín hiệu
    % xo - Phần lẻ của tín hiệu
    % m  - Trục thời gian mở rộng (đối xứng)

    m = min(-n):max(n);  % Mở rộng miền thời gian để chứa cả n và -n
    x_m = zeros(1, length(m)); % Khởi tạo tín hiệu mở rộng
    x_neg_m = zeros(1, length(m));

    % Ánh xạ tín hiệu x vào mảng mở rộng
    for i = 1:length(n)
        idx_pos = m == n(i);  % Chỉ số của n(i) trong m
        idx_neg = m == -n(i); % Chỉ số của -n(i) trong m
        x_m(idx_pos) = x(i);
        x_neg_m(idx_neg) = x(i);
    end

    % Tính phần chẵn và phần lẻ
    xe = 0.5 * (x_m + x_neg_m);  % Phần chẵn
    xo = 0.5 * (x_m - x_neg_m);  % Phần lẻ
end
