/*
    Copyright (c) 2012 United States Government as represented by
    the National Aeronautics and Space Administration.  No copyright
    is claimed in the United States under Title 17, U.S.Code. All Other
    Rights Reserved.

    The software in this package has been released as open-source software
    under the NASA Open Source Agreement.  See the accompanying file
    NASA_Open_Source_Agreement.pdf for a full description of the terms.
*/


/* CREATE SCHEMA Public; */

/* The Hypatheon database schema is defined here.  Changes to the schema
   in future versions can render existing databases incompatible.
   Foreign key constraints are provided in the schema as comments only
   because SQLite doesn't have this feature turned on by default. */

CREATE TABLE Hypatheon (
  /* Hypatheon, PVS versions at time of database creation. */
  version_at_creation VARCHAR(20),
  pvs_version VARCHAR(20),
  entity_stats VARCHAR(200)      /* Counts of PVS entities */
);

CREATE TABLE Libraries (
  "library_id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" VARCHAR(100) NOT NULL,
  "file_id" INTEGER DEFAULT 0,
  "index_time" INTEGER DEFAULT 0
/*  CONSTRAINT fk_Libraries_file_id
        FOREIGN KEY (file_id) REFERENCES FileDescriptors("file_id") 
                ON UPDATE CASCADE ON DELETE CASCADE   */
);

/* No index needed because number of libraries is modest (< 100). */

CREATE TABLE Theories (
  "theory_id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" VARCHAR(100) NOT NULL, 
  "module_path" VARCHAR(200) NOT NULL,
  "module_type" VARCHAR(20) NOT NULL, 
  "library" VARCHAR(100) NOT NULL, 
  "library_id" INTEGER NOT NULL,
  "file_id" INTEGER DEFAULT 0
/*  CONSTRAINT fk_Theories_library_id
  	FOREIGN KEY ("library_id") REFERENCES Libraries("library_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE, 
  CONSTRAINT fk_Theories_file_id
  	FOREIGN KEY ("file_id") REFERENCES FileDescriptors("file_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE    */
);

CREATE INDEX btree_Theories_name ON Theories(name);
CREATE INDEX btree_Theories_module_path ON Theories(module_path);

/* CREATE INDEX btree_Theories_name_library_id ON Theories(name, library_id); */

/* Each theory's source text is saved as the 'body' and the generated
   declarations become the 'addendum'. */

CREATE TABLE TheoryBodies (
  "theory_id" INTEGER NOT NULL,
  "library_id" INTEGER NOT NULL,
  "theory_lines" INTEGER NOT NULL,
  "addendum_lines" INTEGER NOT NULL,
  "body" TEXT,
  "addendum" TEXT
/*  CONSTRAINT fk_TheoryBodies_library_id
  	FOREIGN KEY ("library_id") REFERENCES Libraries("library_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE, 
  CONSTRAINT fk_TheoryBodies_theory_id
  	FOREIGN KEY ("theory_id") REFERENCES Theories("theory_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE   */
);

CREATE INDEX btree_TheoryBodies_theory_id ON TheoryBodies(theory_id);


/* To support faster searches, PVS entity names are handled specially.
   Each name and all of its suffixes are placed in a suffix table so
   wild-card searches can benefit from an index.  Adding a UNIQUE
   constraint on names caused problems so it was omitted.  Uniqueness
   is ensured because names are checked for existence before insertion. */

CREATE TABLE AllNames (
  "name_id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name"    VARCHAR(100) NOT NULL   /* UNIQUE */
);

CREATE INDEX btree_AllNames_name ON AllNames (name);

CREATE TABLE SuffixNames (
  "suffix"  VARCHAR(100) NOT NULL,
  "name_id" INTEGER NOT NULL
/*  CONSTRAINT fk_SuffixNames_name_id
  	FOREIGN KEY ("name_id") REFERENCES AllNames("name_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE   */
);

CREATE INDEX btree_SuffixNames_suffix ON SuffixNames (suffix);


/* The following tables are used to store data about declarations, proofs
   and steps as well as their references to other entities.  Referenced
   entities might not be indexed in the database so they are included
   by name only.  All tables contain a column called 'library_id' so
   relevant rows can be deleted when a library is removed.
*/

CREATE TABLE Declarations (
  "declaration_id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name_id" INTEGER NOT NULL,
  "decl_type" VARCHAR(20) NOT NULL, 
  "theory_id" INTEGER NOT NULL,
  "theory" VARCHAR(100),
  "library_id" INTEGER,
  "library" VARCHAR(100),
  "signature" TEXT DEFAULT '',
  "location" VARCHAR(30) NOT NULL, 
  "body" TEXT
/*  CONSTRAINT fk_Declarations_library_id
  	FOREIGN KEY ("library_id") REFERENCES Libraries("library_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE,
  CONSTRAINT fk_Declarations_theory_id
        FOREIGN KEY ("theory_id") REFERENCES Theories("theory_id")
                ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE   */
);

CREATE INDEX btree_Declarations_name_id ON Declarations (name_id);
CREATE INDEX btree_Declarations_theory_id ON Declarations (theory_id);

/* Following index can slow down some queries:
CREATE INDEX btree_Declarations_type ON Declarations (decl_type); */


CREATE TABLE DeclarationReferences (
  "name_id" INTEGER NOT NULL,
  "declaration_id" INTEGER,
  "decl_type" VARCHAR(20) NOT NULL,
  "theory" VARCHAR(100),
  "theory_id" INTEGER,
  "library" VARCHAR(100),
  "library_id" INTEGER,
  "signature" TEXT,
  "ref_name_id" INTEGER NOT NULL,
/*  "ref_declaration_id" INTEGER, */
  "ref_type" VARCHAR(20),
  "ref_count" INTEGER DEFAULT 1,
  "ref_theory" VARCHAR(100),
/*  "ref_theory_id" INTEGER, */
  "ref_library" VARCHAR(100),
/*  "ref_library_id" INTEGER, */
  "ref_signature" TEXT
/*  CONSTRAINT fk_DeclarationReferences_library_id
  	FOREIGN KEY ("library_id") REFERENCES Theories("library_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE,
  CONSTRAINT fk_DeclarationReferences_theory_id
  	FOREIGN KEY ("theory_id") REFERENCES Theories("theory_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE   */
);

CREATE INDEX btree_DeclarationReferences_name_id
    ON DeclarationReferences(name_id);
CREATE INDEX btree_DeclarationReferences_ref_name_id
    ON DeclarationReferences(ref_name_id);
CREATE INDEX btree_DeclarationReferences_declaration_id
    ON DeclarationReferences(declaration_id);
/* CREATE INDEX btree_DeclarationReferences_ref_declaration_id ON DeclarationReferences("ref_declaration_id"); */

/* This table captures the relationship of a declaration leading to the
   generation of several others, such as TCCs.  Both are assumed to be
   in the same library.  */

CREATE TABLE GeneratedDeclarations (
  "declaration_id" INTEGER NOT NULL,
  "decl_type" VARCHAR(20) NOT NULL,
  "generated_id" INTEGER NOT NULL,
  "gen_type" VARCHAR(20) NOT NULL,
  "library_id" INTEGER
/*  CONSTRAINT fk_GeneratedDeclarations_library_id
  	FOREIGN KEY ("library_id") REFERENCES Libraries("library_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE  */
);

CREATE INDEX btree_GeneratedDeclarations_declaration_id
    ON GeneratedDeclarations (declaration_id);
CREATE INDEX btree_GeneratedDeclarations_generated_id
    ON GeneratedDeclarations (generated_id);


CREATE TABLE Proofs (
  proof_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name_id INTEGER NOT NULL,
  proof_type VARCHAR(20) NOT NULL,
  decl_name_id INTEGER NOT NULL,
  decl_type VARCHAR(20) NOT NULL,
  declaration_id INTEGER NOT NULL,
  library_id INTEGER,
  library VARCHAR(100),
  theory_id INTEGER,
  theory VARCHAR(100),
  signature TEXT DEFAULT '',
  run_date VARCHAR(50),
  run_time INTEGER,                   /* ms */
  num_steps INTEGER,
  status VARCHAR(20),
  description TEXT DEFAULT '',
  script TEXT DEFAULT ''
/*  CONSTRAINT fk_Proofs_library_id
  	FOREIGN KEY ("library_id") REFERENCES Libraries("library_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE,
  CONSTRAINT fk_Proofs_theory_id
        FOREIGN KEY ("theory_id") REFERENCES Theories("theory_id")
                ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE   */
);

CREATE INDEX btree_Proofs_name_id ON Proofs (name_id);
CREATE INDEX btree_Proofs_theory_id ON Proofs (theory_id);
CREATE INDEX btree_Proofs_declaration_id ON Proofs (declaration_id);
CREATE INDEX btree_Proofs_decl_name_id ON Proofs (decl_name_id);

CREATE TABLE ProofReferences (
  proof_id INTEGER NOT NULL,
  name_id INTEGER NOT NULL,
  proof_type VARCHAR(20) NOT NULL, 
  decl_name_id INTEGER NOT NULL,
  decl_type VARCHAR(20) NOT NULL,
  declaration_id INTEGER NOT NULL,
  signature TEXT DEFAULT '',
  theory VARCHAR(100),
  theory_id INTEGER,
  library VARCHAR(100),
  library_id INTEGER,
  ref_name_id INTEGER NOT NULL,
/*  "ref_declaration_id" INTEGER, */
  ref_type VARCHAR(20),
  ref_count INTEGER DEFAULT 1,
  ref_theory VARCHAR(100),
/*  "ref_theory_id" INTEGER, */
  ref_library VARCHAR(100),
/*  "ref_library_id" INTEGER, */
  ref_signature TEXT
/*  CONSTRAINT fk_ProofReferences_library_id
  	FOREIGN KEY ("library_id") REFERENCES Libraries("library_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE,
  CONSTRAINT fk_ProofReferences_theory_id
        FOREIGN KEY ("theory_id") REFERENCES Theories("theory_id")
                ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE   */
);

CREATE INDEX btree_ProofReferences_name_id ON ProofReferences(name_id);
CREATE INDEX btree_ProofReferences_ref_name_id ON ProofReferences(ref_name_id);
CREATE INDEX btree_ProofReferences_proof_id ON ProofReferences(proof_id);
CREATE INDEX btree_ProofReferences_declaration_id ON ProofReferences(declaration_id);
/* CREATE INDEX btree_ProofReferences_ref_declaration_id ON ProofReferences("ref_declaration_id"); */

CREATE TABLE ProofStepReferences (
  proof_id INTEGER NOT NULL,
  name_id INTEGER NOT NULL,
  proof_type VARCHAR(20) NOT NULL, 
  decl_name_id INTEGER NOT NULL,
  decl_type VARCHAR(20) NOT NULL,
  declaration_id INTEGER NOT NULL,
  signature TEXT DEFAULT '',
  theory VARCHAR(100),
  theory_id INTEGER,
  library VARCHAR(100),
  library_id INTEGER,
  ref_name_id INTEGER NOT NULL,
  ref_type VARCHAR(20),
  ref_count INTEGER DEFAULT 1,
/*  "ref_library_id" INTEGER, */
  ref_library VARCHAR(100)       /* for future use */
/*  CONSTRAINT fk_ProofStepReferences_library_id
  	FOREIGN KEY ("library_id") REFERENCES Libraries("library_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE,
  CONSTRAINT fk_ProofStepReferences_theory_id
  	FOREIGN KEY ("theory_id") REFERENCES Theories("theory_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE   */
);

CREATE INDEX btree_ProofStepReferences_name_id ON ProofStepReferences(name_id);
CREATE INDEX btree_ProofStepReferences_ref_name_id
    ON ProofStepReferences(ref_name_id);
CREATE INDEX btree_ProofStepReferences_proof_id
    ON ProofStepReferences(proof_id);
CREATE INDEX btree_ProofStepReferences_declaration_id
    ON ProofStepReferences(declaration_id);


CREATE TABLE Steps (
  step_id    INTEGER PRIMARY KEY AUTOINCREMENT,
  name_id    INTEGER NOT NULL,
  step_type  VARCHAR(20) NOT NULL,
  library_id INTEGER,
  library    VARCHAR(100),
  docstring  TEXT DEFAULT ''
/*  CONSTRAINT fk_Steps_library_id
  	FOREIGN KEY ("library_id") REFERENCES Libraries("library_id")
		ON DELETE CASCADE ON UPDATE CASCADE NOT DEFERRABLE   */
);

CREATE INDEX btree_Steps_name_id ON Steps(name_id);


/* Theory references reflect PVS importing directives.  Both direct and
   transitive closure forms are provided. */

CREATE TABLE TheoryReferences (
  "name" VARCHAR(100),
  "theory_id" INTEGER,
  "module_type" VARCHAR(20) NOT NULL, 
  "library" VARCHAR(100),
  "library_id" INTEGER,
/*  "ref_type" VARCHAR(20), */
  "ref_theory" VARCHAR(100),
  "ref_type" VARCHAR(20) NOT NULL, 
  "ref_count" INTEGER DEFAULT 1,
/*  "ref_theory_id" INTEGER, */
  "ref_library" VARCHAR(100)
/*  CONSTRAINT fk_TheoryReferences_library_id
        FOREIGN KEY ("library_id") REFERENCES Libraries ("library_id")
                ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_TheoryReferences_theory_id
        FOREIGN KEY ("theory_id") REFERENCES Theories ("theory_id")
                ON DELETE CASCADE ON UPDATE CASCADE    */
);

CREATE INDEX btree_TheoryReferences_name ON TheoryReferences(name);
CREATE INDEX btree_TheoryReferences_ref_name ON TheoryReferences(ref_theory);
CREATE INDEX btree_TheoryReferences_theory_id ON TheoryReferences(theory_id);
CREATE INDEX btree_TheoryReferences_library ON TheoryReferences(library);
CREATE INDEX btree_TheoryReferences_ref_library ON TheoryReferences(ref_library);

CREATE TABLE TheoryReferencesClosure (
  "name" VARCHAR(100),
  "theory_id" INTEGER,
  "module_type" VARCHAR(20) NOT NULL, 
  "library" VARCHAR(100),
  "library_id" INTEGER,
/*  "ref_type" VARCHAR(20), */
  "ref_theory" VARCHAR(100),
  "ref_type" VARCHAR(20) NOT NULL, 
  "ref_count" INTEGER DEFAULT 1,
/*  "ref_theory_id" INTEGER, */
  "ref_library" VARCHAR(100)
/*  CONSTRAINT fk_TheoryReferencesClosure_library_id
        FOREIGN KEY ("library_id") REFERENCES Libraries ("library_id")
                ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_TheoryReferencesClosure_theory_id
        FOREIGN KEY ("theory_id") REFERENCES Theories ("theory_id")
                ON DELETE CASCADE ON UPDATE CASCADE   */
);

CREATE INDEX btree_TheoryReferencesClosure_name
    ON TheoryReferencesClosure(name);
CREATE INDEX btree_TheoryReferencesClosure_ref_name
    ON TheoryReferencesClosure(ref_theory);
CREATE INDEX btree_TheoryReferencesClosure_theory_id
    ON TheoryReferencesClosure(theory_id);
CREATE INDEX btree_TheoryReferencesClosure_library
    ON TheoryReferencesClosure(library);
CREATE INDEX btree_TheoryReferencesClosure_ref_library
    ON TheoryReferencesClosure(ref_library);


/* This table describes theory files or virtual files associated
   with theories and libraries. */

CREATE TABLE FileDescriptors (
    file_id INTEGER PRIMARY KEY AUTOINCREMENT,
    rel_path VARCHAR(200) NOT NULL,
    file_type VARCHAR(20),
    file_size INTEGER,   /* 0 for directories */
    mod_time INTEGER,
    library_id INTEGER
);

CREATE INDEX btree_FileDescriptors_rel_path ON FileDescriptors (rel_path);

CREATE INDEX btree_FileDescriptors_mod_time ON FileDescriptors (mod_time);

