if ! [ -x "$(command -v /usr/local/bin/s3cmd)" ]; then
        echo 'Error: s3cmd is not installed.'
        wget https://sourceforge.net/projects/s3tools/files/s3cmd/2.0.1/s3cmd-2.0.1.tar.gz
        tar xzf s3cmd-2.0.1.tar.gz
        cd s3cmd-2.0.1
        sudo apt-get install -y python-setuptools python-dateutil
        sudo python setup.py install
        echo "Please configure s3cmd ; Not uploading files to s3Bucket"
        s3Available=0
fi
