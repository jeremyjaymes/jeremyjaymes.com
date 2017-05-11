all: build sync-s3 invalidate-cache

clean:
	@rm -rf \
	public

build:
	hugo

sync-s3:
	aws s3 sync --acl "public-read" --sse "AES256" public/ "s3://$(S3_BUCKET)" --exclude 'post'

invalidate-cache:
	aws configure set preview.cloudfront true
	aws cloudfront create-invalidation --distribution-id $(CF_DISTRIBUTION) --paths /index.html /about/index.html /projects/index.html