function g = my_histeq(f)
% 直方图均衡化（教材 3.3.1）：sk = (L-1)*sum_{j=0..k} pr(j)，四舍五入取整
% 用法：g = my_histeq(f)
h   = my_hist(f);                  % 调用另一个函数（注意：参数用列向量索引方式传入）
cdf = cumsum(h) / numel(f);
s   = round(cdf * 255);
g   = uint8(s(double(f) + 1));     % 灰度 r -> s(r) 映射（MATLAB 索引从 1 起，灰度 0 对应索引 1）
end
