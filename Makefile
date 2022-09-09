latest:
	make alpine rocker-geospatial rocker-r-ver rocker-tidyverse rocker-verse

alpine: .PHONY
	make -C alpine/ latest

rocker-geospatial: .PHONY
	make -C rocker-geospatial/ latest

rocker-r-ver: .PHONY
	make -C rocker-r-ver/ latest

rocker-tidyverse: .PHONY
	make -C rocker-tidyverse/ latest

rocker-verse: .PHONY
	make -C rocker-verse/ latest

all:
	make -C alpine/ latest
	make -C rocker-geospatial/ latest
	make -C rocker-r-ver/ latest
	make -C rocker-tidyverse/ latest
	make -C rocker-verse/ latest

push:
	docker push ucddart/dash-base:latest
	docker push ucddart/dash-base:alpine-3.16
	docker push ucddart/dash-base:rocker-geospatial-4
	docker push ucddart/dash-base:rocker-r-ver-4
	docker push ucddart/dash-base:rocker-tidyverse-4
	docker push ucddart/dash-base:rocker-verse-4

.PHONY:
	echo "Building Dash base images locally...\n"