# glowing-telegram
dockerized non-gpu CPU ONLY of VikParuchuri/marker which is a PDF-to-MARKDOWN

# BUILD DOCKER IMAGE
`run_dockerfile.sh`
```
docker run -it -v ./pdf_input:/pdf_input -v ./pdf_output:/pdf_output -p 8501:8501 marker/mark:234 bash
```

# RUN DOCKER IMAGE
`./run_dockerfile.sh`
```
docker run -it -v ./pdf_input:/pdf_input -v ./pdf_output:/pdf_output -p 8501:8501 marker/mark:234 bash
```

# INSIDE DOCKER IMAGE
`cd /opt` (already in this default directory)

# RUN PYTHON VENV
> `source marker/bin/activate`

# SINGLE PDF to MARKDOWN
> `marker_single /pdf_input/file.pdf /pdf_output`

# MULTIPLE PDFS to MARKDOWN
marker /pdf_input/ /pdf_output --workers 4 --max 10 --min_length 10000

# USE BROWSER WITH `marker_gui` 
URL: [http://localhost:8501](http://localhost:8501)
