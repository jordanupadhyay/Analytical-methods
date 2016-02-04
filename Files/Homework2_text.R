women

weight.cut = cut(women$weight,5)
weight.freq = table(weight.cut)
weight.cumfreq = cumsum(weight.freq)
weight.relfreq = weight.freq/ nrow(women)
weight.cumrelfreq = cumsum(weight.relfreq)

weight.freq
weight.cumfreq
weight.relfreq
weight.cumrelfreq

height.cut = cut(women$height,5)
height.freq = table(height.cut)
height.cumfreq = cumsum(height.freq)
height.relfreq = height.freq/ nrow(women)
height.cumrelfreq = cumsum(height.relfreq)

height.freq
height.cumfreq
height.relfreq
height.cumrelfreq
