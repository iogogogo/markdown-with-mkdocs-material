DEST?=site
ARCHIVE_FILE?=markdown-with-mkdocs-material

run:
	mkdocs serve

clean:
	rm -rf public ${ARCHIVE_FILE}-*.tar.gz

build:
	mkdocs build --clean
	git describe --tags --long --always > ${DEST}/VERSION

tar:
	rm -f ${ARCHIVE_FILE}-*.tar.gz
	tar --exclude="${DEST}/.DS_Store" -zcvf ${ARCHIVE_FILE}-$(shell git describe --tags --long --always)-$(shell date "+%Y%m%d").tar.gz ${DEST}

deploy:
	mkdocs gh-deploy --clean