-- DDL statements to create database relations

CREATE TABLE states (
  st_abbrev CHAR(2),
  st_name VARCHAR(20),
  screened_conditions INT,
  PRIMARY KEY (st_abbrev)
);

CREATE TABLE nbsConditions (
  condition_name VARCHAR(50),
  cond_abbrev VARCHAR(15),
  gene_name VARCHAR(100),
  mutation_type VARCHAR(100),
  incidence VARCHAR(100),
  PRIMARY KEY (condition_name)
);
