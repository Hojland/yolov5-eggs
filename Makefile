.PHONY: labelstudio

labelstudio: 
	docker run -it -p 8080:8080 -v $(PWD)/data/labelstudio:/label-studio/data heartexlabs/label-studio:latest