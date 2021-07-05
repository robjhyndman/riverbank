### Build and deploy https://riverbankcounselling.com

all: deploy

deploy:
	rsync -zrvce 'ssh -p 18765' --exclude=".git" . u194-vjpvulwoi0jx@m80.siteground.biz:www/riverbankcounselling.com/public_html
