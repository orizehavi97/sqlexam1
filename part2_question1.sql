-- Ex 1
CREATE TABLE televisions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    catalog_number TEXT NOT NULL UNIQUE,
    brand TEXT NOT NULL CHECK (brand IN ('Samsung', 'LG', 'Sony')),
    model TEXT NOT NULL UNIQUE,
    screen_size INTEGER NOT NULL CHECK (screen_size > 0),
    resolution TEXT NOT NULL CHECK (resolution IN ('4K', '8K', 'Full HD')),
    price REAL NOT NULL CHECK (price >= 0),
    stock_quantity INTEGER NOT NULL CHECK (stock_quantity >= 0),
    release_year INTEGER CHECK (release_year >= 2000),
    smart_tv BOOLEAN NOT NULL DEFAULT 0,
    os TEXT DEFAULT NULL,
    panel_type TEXT NOT NULL CHECK (panel_type IN ('OLED', 'QLED', 'LED'))
);

-- Ex 2
INSERT INTO televisions
    (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type)
VALUES
    ('TV1', 'Samsung', 'GA93', 42, 'Full HD', 799.99, 30, 2022, 1, 'Android TV', 'QLED'),
    ('TV2', 'LG', 'GAASV', 65, '4K', 1499.99, 15, 2021, 1, 'webOS', 'OLED'),
    ('TV3', 'Sony', '64HIH', 75, '8K', 2499.99, 10, 2023, 0, NULL, 'LED');
