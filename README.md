# investment-portofolio-api

Node JS CRUD API Example

- [x] store info in [JSON file](data/investments.json)
- [x] UI Example for this app can be found in [Mihai-Iusztin/investment-portofolio](https://github.com/Mihai-Iusztin/investment-portofolio)

## Install

``
git clone https://github.com/Mihai-Iusztin/investment-portofolio-api.git
cd investment-portofolio-api
npm install
npm install nodemon

````

## Usage

```sh
nodemon index.js
````

Open http://localhost:3000 to see if it works

## JSON file as storage

Instruments are stored inside [data/instruments.json](data/instruments.json)

```js
// GET instruments
fetch("http://localhost:3000", {
  method: "GET",
  headers: {
    "Content-Type": "application/json"
  }
});

// POST instruments/create
fetch("http://localhost:3000/new", {
  method: "POST",
  headers: {
    "Content-Type": "application/json"
  },
  body: JSON.stringify(instrument)
});

// DELETE instrument
fetch("http://localhost:3000/delete", {
  method: "DELETE",
  headers: {
    "Content-Type": "application/json"
  },
  body: JSON.stringify({ id: id })
});

// PUT edit instrument
fetch("http://localhost:3000/update", {
  method: "PUT",
  headers: {
    "Content-Type": "application/json"
  },
  body: JSON.stringify(instrument)
});
```
