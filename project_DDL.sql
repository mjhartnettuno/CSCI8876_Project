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
  gene_name VARCHAR(30),
  mutation_type VARCHAR(30),
  incidence VARCHAR(15),
  PRIMARY KEY (condition_name)
);

CREATE TABLE treatments (
  treatment_name VARCHAR(50),
  condition_name VARCHAR(50),
  treatment_type VARCHAR(30),
  trial_progress VARCHAR(30),
  PRIMARY KEY (treatment_name)
);

CREATE TABLE pilots (
  st_abbrev CHAR(2),
  condition_name VARCHAR(50),
  PRIMARY KEY (st_abbrev,condition_name)
);
