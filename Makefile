all: build sync-s3 invalidate-cache

clean:
	@rm -rf \
	public

build:
	hugo

sync-s3:
	aws s3 sync --acl "public-read" --sse "AES256" public/ "s3://$(S3_BUCKET)" --cache-control "max-age=3600" --exclude '*' --exclude 'post' --include "*.html" --include "*.xml"
	aws s3 sync --acl "public-read" --sse "AES256" public/ "s3://$(S3_BUCKET)" --cache-control "max-age=2592000" --exclude '*.html' --exclude '*.xml'

invalidate-cache:
	aws configure set preview.cloudfront true
	aws cloudfront create-invalidation --distribution-id $(CF_DISTRIBUTION) --paths /index.html /about/index.html /projects/index.html