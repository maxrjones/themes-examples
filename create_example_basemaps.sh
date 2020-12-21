files='png'
filedir='source/_static/figures'
mapwidth="5 10 25 100"
themes="modern modernA1 modernA2 modernA3 modernA4 modernA5 minimal classic"

## Mercator ###
for t in ${themes}; do
for i in ${mapwidth}; do
gmt begin ${filedir}/basemap_JM_${t}_${i}c ${files}
        gmt basemap -R-90/-70/0/20 -JM${i}c -B+t"A map using a theme" -Bafg --GMT_THEME=${t}
gmt end
done
done

## Lambert Conic
for t in ${themes}; do
for i in ${mapwidth}; do
gmt begin ${filedir}/basemap_JL_${t}_${i}c ${files}
        gmt basemap -R-130/-70/24/52 -JL-100/35/33/45/${i}c -B+t"A map using a theme" -Bafg --GMT_THEME=${t}
gmt end
done
done

## Cartesian
for t in ${themes}; do
for i in ${mapwidth}; do
gmt begin ${filedir}/basemap_JX_${t}_${i}c ${files}
        gmt basemap -R10/20/-3/8 -JX${i}c -B+t"A plot using a theme" -Bafg --GMT_THEME=${t}
gmt end
done
done
