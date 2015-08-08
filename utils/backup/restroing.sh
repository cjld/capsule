echo "Using archive :$1"
if [ -f "$1" ]; then
    echo "running"
    tar xvpfz $1 -C /
else
    echo "Usage $0 archive_file_name"
fi
