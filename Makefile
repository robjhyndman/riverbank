### Build and deploy https://riverbankcounselling.com

all: serve

serve:
	Rscript -e "blogdown::serve_site()"

build:
	Rscript -e "blogdown::hugo_build()"

deploy: build
	cp .htaccess public
	rsync -zrvce 'ssh -p 18765' public/ robjhynd@m80.siteground.biz:public_html/riverbankcounselling.com

clean:
	rm -rf public

