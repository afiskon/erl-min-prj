Erlang Minimal Project
======================

Minimal Erlang project and example of packing this project into deb package.

```
sudo apt-get install ruby ruby-dev
sudo gem install fpm
make deb
```

Also using this template you can create your own Erlang service:

```
git checkout ...
cd mynewservice
wget https://raw.github.com/afiskon/erl-min-prj/master/scripts/new-erl-srv
chmod u+x new-erl-srv
./new-erl-srv mynewservice "My New Service" https://eax.me/
rm new-erl-srv
git add .
git commit -am 'Initial Commit'
git push origin HEAD
git tag 0.1.0 # tags are used as deb package version
git push origin 0.1.0
make run # run service, for debug purposes
make deb # create deb package
```

For more details see https://eax.me/erlang-deb-package/ and https://redd.it/204ajd
