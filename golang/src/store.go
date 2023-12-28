package main

import (
    "database/sql"

    _ "github.com/mattn/go-sqlite3"
)

var db *sql.DB

func InitStore(dataSourceName string) {
    var err error
    db, err = sql.Open("sqlite3", dataSourceName)
    if err != nil {
        panic(err)
    }

    _, err = db.Exec("CREATE TABLE IF NOT EXISTS store (key TEXT PRIMARY KEY, value TEXT)")
    if err != nil {
        panic(err)
    }
}

func Set(key string, value string) error {
    _, err := db.Exec("INSERT OR REPLACE INTO store (key, value) VALUES (?, ?)", key, value)
    return err
}

func Get(key string) (string, error) {
    row := db.QueryRow("SELECT value FROM store WHERE key = ?", key)

    var value string
    err := row.Scan(&value)
    return value, err
}