int mainDatabaseVersion = 7;

List<String> mainDatabaseDdlCreate = [
  '''
    DROP TABLE IF EXISTS todos;
  ''',
  '''
    CREATE TABLE todos (
      id TEXT PRIMARY KEY, 
      title TEXT NOT NULL,
      desc TEXT,
      status TEXT,
      start TEXT,
      end TEXT,
      created TEXT,
      updated TEXT
    );
  '''
];

List<String> mainDatabaseDdlUpdate = [
  '''
    DROP TABLE IF EXISTS todos;
  ''',
  '''
    CREATE TABLE todos (
      id TEXT PRIMARY KEY, 
      title TEXT NOT NULL,
      desc TEXT,
      status TEXT,
      start TEXT,
      end TEXT,
      created TEXT,
      updated TEXT
    );
  ''',
];
