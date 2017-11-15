BINARY=my_binay

VERSION=`date +%FT%T%z`
build:
	go build -ldflags "-X main.VERSION=${VERSION}" -o ${BINARY}

install:
	go install -ldflags "-X main.VERSION=${VERSION}"

clean:
	if [ -f ${BINARY} ] ; then rm ${BINARY} ; fi