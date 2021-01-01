SVD2ADA_DIR=$(shell dirname $(shell which svd2ada))

all: svd

svd: svd-efm32gg12b

svd-efm32gg12b:
	rm -rf */svd */svdtmp
	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/Silabs/EFM32GG12B810F1024GM64.svd \
	  -o efm32/efm32gg12b/svdtmp -p Interfaces.EFM32
	for d in */efm32/efm32gg12b/svdtmp; do \
	   cd $$d; \
	   mkdir ../svd; \
	   mv i-*.ads ../svd; \
		 mv a-intnam.ads ../svd; \
	   mv handler.S ../svd; \
	   cd ../..; \
	done
	rm -rf */svdtmp
