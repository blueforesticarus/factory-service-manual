OUT=$(basename -- "$1").min.pdf

gs -sDEVICE=pdfwrite \
   -dCompatibilityLevel=1.4 \
   -dPDFSETTINGS=/screen \
   -dNOPAUSE \
   -dQUIET \
   -dBATCH \
   -dNOGC \
   -dNumRenderingThreads=8 \
   -dBandHeight=100 \
   -sBandListStorage=memory \
   -dBufferSpace=1000000000 \
   -sOutputFile=$OUT $1
