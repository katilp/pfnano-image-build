FROM gitlab-registry.cern.ch/cms-cloud/cmssw-docker-opendata/cmssw_10_6_30-slc7_amd64_gcc700
RUN source /opt/cms/entrypoint.sh && \
    cd /code/CMSSW_10_6_30/src && \
    git init && \
    git remote add cms-sw https://github.com/cms-sw/cmssw.git && \
    git remote update && \
    git checkout CMSSW_10_6_30 -- Utilities/XrdAdaptor && \
    sed -i 's/XRD_DEFAULT_TIMEOUT = 3 * 60/XRD_DEFAULT_TIMEOUT = 6 * 60/' Utilities/XrdAdaptor/src/XrdRequestManager.h && \
    git clone https://github.com/cms-opendata-analyses/PFNanoProducerTool.git PhysicsTools/PFNano && \
    scram b

