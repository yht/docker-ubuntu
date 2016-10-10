gpg --recv-key 40976EAF437D05B5
debootstrap --keyring=~/.gnupg/pubring.gpg --variant=minbase \
   --components=main --include=gpgv \
   lucid lucid http://suro.ubaya.ac.id/ubuntu/
cd lucid
tar cf ../lucid.tar *
cd ..
xz -9 lucid.tar
rm -rf lucid
