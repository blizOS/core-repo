# /bin/bash

repo-add blizos-core.db.tar.gz *.pkg.tar.zst
echo "Removing Symlinks"
rm blizos-core.db
rm blizos-core.files
echo "Renaming files"
mv blizos-core.db.tar.gz blizos-core.db
mv blizos-core.files.tar.gz blizos-core.files
git add *
git commit -a -m "New update"

# Redo process because of signing
rm blizos-core.db
rm blizos-core.files

repo-add blizos-core.db.tar.gz *.pkg.tar.zst
echo "Removing Symlinks"
rm blizos-core.db
rm blizos-core.files
echo "Renaming files"
mv blizos-core.db.tar.gz blizos-core.db
mv blizos-core.files.tar.gz blizos-core.files
git add *
git commit -a -m "New update"
git push
