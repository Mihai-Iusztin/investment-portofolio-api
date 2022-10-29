CREATE TABLE IF NOT EXISTS investments 
(
  id INT NOT NULL AUTO_INCREMENT,
  name TEXT NOT NULL,
  symbol TEXT NOT NULL,
  openD DATE NOT NULL,
  quantity INT NOT NULL,
  openP INT NOT NULL,
  marketP INT NOT NULL,
  domain TEXT NOT NULL,
  dividendD DATE NOT NULL,
  earningD DATE NOT NULL,
  corporation TEXT NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB;