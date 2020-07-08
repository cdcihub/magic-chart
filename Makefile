deploy:
	make -C magic-container push
	bash make.sh upgrade
