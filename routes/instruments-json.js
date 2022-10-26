var express = require("express");
var router = express.Router();
var fs = require("fs");

const DATA_PATH = "data/instruments.json";

/**
 *
 */
router.get("/", function (req, res, next) {
  console.log("reading file %o", DATA_PATH);
  const instruments = getInstruments();
  res.json(instruments);
});

/**
 *
 */
router.post("/new", function (req, res, next) {
  const id = Math.random().toString(36).substring(7) + new Date().getTime();
  const name = req.body.name;
  const symbol = req.body.symbol;
  const openD = req.body.openD;
  const quantity = req.body.quantity;
  const openP = req.body.openP;
  const marketP = req.body.marketP;
  const domain = req.body.domain;
  const dividendD = req.body.dividendD;
  const earningD = req.body.earningD;
  const corporation = req.body.corporation;

  const instruments = getInstruments();
  instruments.push({
    id,
    name,
    symbol,
    openD,
    quantity,
    openP,
    marketP,
    domain,
    dividendD,
    earningD,
    corporation
  });

  setInstruments(instruments);
  res.json({ success: true, id });
  res.status(201);
});

/**
 *
 */
router.delete("/delete", function (req, res, next) {
  const id = req.body.id;

  const instruments = getInstruments().filter(instrument => instrument.id != id);

  setInstruments(instruments);

  res.json({ success: true });
});

/**
 *
 */
router.put("/update", function (req, res, next) {
  const id = req.body.id;
  const name = req.body.name;
  const symbol = req.body.symbol;
  const openD = req.body.openD;
  const quantity = req.body.quantity;
  const openP = req.body.openP;
  const marketP = req.body.marketP;
  const domain = req.body.domain;
  const dividendD = req.body.dividendD;
  const earningD = req.body.earningD;
  const corporation = req.body.corporation;

  const instruments = getInstruments();

  const instrument = instruments.find(instrument => instrument.id == id);
  if (instrument) {
    (instrument.name = name),
      (instrument.symbol = symbol),
      (instrument.openD = openD),
      (instrument.quantity = quantity),
      (instrument.openP = openP),
      (instrument.marketP = marketP),
      (instrument.domain = domain),
      (instrument.dividendD = dividendD),
      (instrument.earningD = earningD),
      (instrument.corporation = corporation);
  }
  setInstruments(instruments);
  res.json({ success: true });
});

function getInstruments() {
  const content = fs.readFileSync(DATA_PATH);
  return JSON.parse(content);
}

function setInstruments(instruments) {
  const content = JSON.stringify(instruments, null, 2);
  fs.writeFileSync(DATA_PATH, content);
}

module.exports = router;
