SPECIES = {
    0: 'setosa',
    1: 'versicolor',
    2: 'virginica',
}
"""
CREATE TABLE IF NOT EXISTS iris (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    species TEXT,
    datetime DATETIME,
    sepal_length REAL,
    sepal_width REAL,
    petal_length REAL,
    petal_width REAL
);

INSERT INTO iris VALUES (
    NULL,
    :species,
    :datetime,
    :sepal_length,
    :sepal_width,
    :petal_length,
    :petal_width
);
SELECT * FROM iris ORDER BY datetime DESC
"""
