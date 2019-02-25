#
# Makefile for flutter development
#
all: usage
usage:
	@echo "make [edit|pkg|build|run]"

edit e:
	vi lib/main.dart

copy cp:
	@ls -al ~/coding/dt/flutter-engine/launcher/*.zip
	cp ~/coding/dt/flutter-engine/launcher/linux_launcher.zip .

unzip:
	unzip linux_launcher.zip; rm -f linux_launcher.zip

pkg p:
	flutter packages get

build b:
	flutter build bundle

debug:
	flutter attach --device-id=flutter-tester --debug-port=49494

run r:
	./flutter_launcher	

#------------------------------------------------------------------------------
git g:
	@echo ""
	@echo "make (git) [update|login|tag|status]"
	@echo ""

git-update gu:
	git add *.md Makefile *.yaml lib/ android/ ios .vscode/ 
	git commit -m "initial update commit"
	git push -u origin master 

git-remove gr:
	git rm -r <path>
	git commit -m "Remove duplicated directory"
	git push origin master

git-login gl:
	git config --global user.email "sikang99@gmail.com"
	git config --global user.name "Stoney Kang"
	git config --global push.default matching
	#git config --global push.default simple
	git config credential.helper store

git-tag gt:
	git tag v0.0.5
	git push --tags

git-status gs:
	git status
	git log --oneline -5
# ---------------------------------------------------------------------------

