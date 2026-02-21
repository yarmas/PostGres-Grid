import pg from 'pg';
const { Pool, Client } = pg;
const connectionString = 'postgresql://postgres:password@localhost:5432/postgres';

const pool = new POOL({
  connectionString: connectionString,
});

await pool.query('SELECT NOW()');
await pool.end();

const client = new Client({
  connectionString: connectionString,
});

await client.connect();

await client.query('SELECT NOW()');

await client.end();