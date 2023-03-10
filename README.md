# ZIP-API

![example workflow](https://github.com/RamSailopal/ZIP-API/actions/workflows/deploy.yml/badge.svg)

An API that takes a zip  code and returns the longitute and latitude

Utilises files found from https://www.census.gov/geographies/reference-files/time-series/geo/gazetteer-files.html (2022 data)

Utilises YottaDB as the database and Python flask to present the API endpoint.

# To run

    docker-run -p 5000:5000 -it docker.io/ramb0/api-zip
    

The endpoint will then be available at the address http://dockerserveraddress:5000/zip

To get the co-ordinates for example of zip **90210**:

    curl http://dockerserveraddress:5000/zip?zip=90210
    
    
Output:

    [
      {
        "lat": "34.064956",
        "long": "-118.382981",
        "zip": "90211"
       }
    ]
