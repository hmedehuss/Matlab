function char_codes
for ii= 33:126
    fprintf('%s', char(ii));
end
fprintf('%s',10); %% same as fprintf('\n'); 
for ii= 33:126
    fprintf('%s', ii);
end
fprintf('\n');
end