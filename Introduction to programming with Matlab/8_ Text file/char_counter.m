function charnum=char_counter(fname,character)
charnum=0;
fig = fopen(fname,'rt');
if fig<0 || ~ischar(character)
    charnum = -1;
    return;
end
oneline = fgets(fig);
while ischar(oneline)
    index = oneline(:) == character;
    charnum = charnum + size(find(index>0),1);
    oneline = fgets(fig);
end
fclose(fname);