FROM atlas/analysisbase@sha256:f6eb057afbe3f7e3682e987237664cb05340612fbebc244b9e370ea035406303
ADD . /analysis/src
WORKDIR /analysis/build
RUN source ~/release_setup.sh &&  \
    sudo chown -R atlas /analysis && \
    cmake ../src && \
    make -j4

