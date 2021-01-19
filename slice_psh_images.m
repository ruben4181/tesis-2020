function slice_psh_images(PSH_DIR, x_imgs, y_imgs, bands)

for i=1:x_imgs
    for j=1:y_imgs
        is = num2str(i);
        js = num2str(j);
        filename = strcat(PSH_DIR, '/', is, js);
        load(filename);
        for k=1:bands
            band_info=I_BDSD
        end
    end
end