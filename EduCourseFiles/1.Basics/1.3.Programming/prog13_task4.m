%% 1.3.13. ����������� ���������
% *��������������� ������*
% % ������������� ������������� �������� ��������� ������������� ������. �������� 
% ��������� ����������� ����� MATLAB, ������� ��������� ����� ������� ������� 
% ����� ����������� �� ���� ������ ������ ������ ���������. �� ����������� ������� 
% ������ ��������� �� ����� ��������� �������, �� �� ������ ��������� ��� ��������� 
% ������� �������� ������.
% % �� ����, ���� ������ �������� � ����, ����� �� ������ 4 ������� ���� - 
% �� ����� �� ������ �����.
%
%% 1. �������� ������
% �������� ������ �� ���������� ����� |temp3.txt| ����������� �� ������ ������ 
% - ��������������� � ����� (|while|) ����������� ������ ��������� ������ (|fgetl()|), 
% ����������� �� �������� (|textscan()|), ������� ����������� � ������������� 
% ���������� |vals|. �� �� ����� ����������� ������� |T|.
%%%%%
%   fid = fopen('temp3.txt');
%   names = fgetl(fid);
%   names = textscan(names, '%s%s%s%s', 'Delimiter', ',');
%   vals = {};
%   while ~feof(fid)
%       str = fgetl(fid);
%       vals = [vals; textscan(str, '%D%s%s%s', 'Delimiter', ',')];
%   end
%   fclose(fid);
%   T = cell2table(vals, 'VariableNames', string(names))
%%%%%
% ����� ������ ����� ����� ��������� ��� ������ ������� ������ � ������������ 
% ����������, �������� ��� ���� �� �������. � ������ �� ������ ���� �������, � 
% ��� �������� �������, �������� ������� ��������� �������. ��� ��� ������� ����� 
% ������� ����������� �������� ��� ������ ������. �������� ���.
% ���������� |T| ������ ��������� �������, ������� �������� � ����� |temp3.txt| 
% (���������: |readtable()|)

% ����� �������, �� ��������� ���, ������� ��� ����� �������� � ����������� 
% �� ���� ������ ������� MATLAB.
%
%% 2. ���������� ������
% ����������� �������� � ����� ���� ���������� �������� |'-'|, ������� ������� 
% � ������������ (2, 3, 4) ��������� ��� �����, � �� ��� �����. ���� � ����� (|for|) 
% ������ �� �������� � �������������� ������� ����������� � ��� |double| �������� 
% |convertvars|.
%%%%% 
%   for i = 2 : 4
%       T = convertvars(T, i, '@str2double');
%   end
%%%%
% ���� � ������ ������ �� �����, ������ ��� ������� |convertvars| ����� ��������������� 
% ����� ��������� ��������. ��������� ������� |convertvars()| ���������, ����� 
% ���� �� ����������� (���������: �������� �������� �� ������ ��������)

% �� ��������� ��� � ������� ��� ����� �������� �� ���� ������ ��������� 
% ��������������� ������� MATLAB.
%
%% 3. ��������� ������
% ������� |T| �������� ����������� ��������. ����������� ���, ��������� � ����� 
% (|for|) �� ���� ������ ������� (|height()|), ������ ����������� �������� ������� 
% |TMAX| (|if ismissing()|) �������� �� ��������������� ������� �� ������� |TAVG|.
%%%%%
%   for i = 1 : height(T)
%       if ismissing(T.TMAX(i))
%           T.TMAX(i) = T.TAVG(i)
%       end
%   end
%%%%%
% �� ��� ������, ��� �������� ���� � �������� (|for-if|) ����� �������� ���������� 
% ���������������. ���������� ��� ���, ����� ������ �������� ���������, ��� ����������� 
% �������� |TMAX| �� ��� ���������� ���������������� ���������� |TAVG| (���������: 
% |ismissing()|)

% ������ ������������� ����� MATLAB, �� ������� ��� ����� �������� � ����������.
%
%% 4. ������������ ������
% ��� ������������ �������� � �������������� ������� (2, 3, 4) ������ ����, 
% ������� �� ������� ������ 3 ������� � ����� ����. ��� ������� ����� ���������, 
% ���� �� ������� �� ������, ������� �������� �� ������ ��������� ��� ���� ������ 
% ������ ����� �������� ���������.
%%%%%
%   hold on
%   for i = 2 : 4
%       plot(T.DATE, T{:, i})
%   end
%   hold off
%%%%%
% � ����� ������ ��� ������ ���� ���������� 3 ������. ��� ����� ������� ��� 
% ����� ����� �������� |plot()| ��������� ������� �� ��� ������ ��� ����������. 
% �������� ��� (� <https://www.mathworks.com/help/matlab/ref/plot.html ������������> 
% ���� ��������� � ������)

% ����� �������, ������ ������������� MATLAB, �� ������ ����� � ��� ������ 
% ��������� ��� � 5 ���, ������ ����������� ������� |plot()|.