function h = my_hist(f)
% 256 级灰度直方图：h(k+1) = 灰度值 k 的像素个数
% 用法：h = my_hist(f)
h = histcounts(double(f), 0:256);
end
