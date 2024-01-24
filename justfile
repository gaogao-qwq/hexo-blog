default:
	just --list

sync:
	just sync_deps
	just sync_theme

sync_deps:
	npm install

sync_theme:
	rm -r {{justfile_directory()}}/themes/fluid && \
	cd {{justfile_directory()}}/themes; \
	wget https://github.com/fluid-dev/hexo-theme-fluid/archive/refs/tags/v1.9.7.zip && \
	unzip v1.9.7.zip && \
	rm v1.9.7.zip && \
	mv hexo-theme-fluid-1.9.7 fluid

deploy:
	hexo deploy

run_server:
	hexo clean && hexo s --debug
