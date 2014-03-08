erlang-minimal-project
======================

Minimal Erlang project and example of packing this project into deb package.

```
sudo apt-get install ruby ruby-dev
sudo gem install fpm
make deb
```

Also using this template you can create your own Erlang application:

```
git checkout ...
cd mynewservice
wget https://raw.github.com/afiskon/erl-min-prj/master/scripts/create-erlang-service.pl
chmod u+x create-erlang-service.pl
./create-erlang-service.pl mynewservice "My New Service" http://example.com/
git add .
git commit -am 'Initial Commit'
git push origin HEAD
git tag 0.1.0 # tags are used as deb package version
git push origin 0.1.0
make run # run application, for debug purposes
make deb # create deb package
```

For more details see http://eax.me/erlang-deb-package/
