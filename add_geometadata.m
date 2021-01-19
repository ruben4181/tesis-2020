function add_geometadata(PIXELS_FILANAME, NC_FILENAME, OUT_FILENAME);

load(PIXELS_FILANAME);
[L, ~]=size(pixels);

tmp = zeros(L, 4);

lon = ncread(NC_FILENAME, 'lon');
lat = ncread(NC_FILENAME, 'lat');

tmp(:, 1:2)=pixels;
pixels = tmp;
for i=1:L
    pixels(i, 3)=lon(pixels(i,1), pixels(i,2));
    pixels(i, 4)=lat(pixels(i, 1), pixels(i, 2));
end

save(OUT_FILENAME, 'pixels', '-v7.3');

end