# Setup SQL server on your M1/M2 macbook

This setup requires **Docker**, please go ahead and install it before you go any further.

## Setup instructions

Run this docker file as:

```shell
docker compose up --build -d
```

Download azure data studio, install it, and open it up. Follow steps below:

1. Click on create a connection
2. In the opened form, write `localhost` for the server
3. Write `Yalchin403` for the username
4. Write `4FL^xo9KVg%yF%F` for the password
5. Toggle remember password

Do not change any other variable you see on the form.

Click on **connect**

## Setting up HR database and populating some random data

### Step 1

Open new query window, copy content of `create_db_and_tables.sql` file, paste it into query window, run it.

### Step 2

**Make sure `Step 1` is successful

Open new query window, copy content of `populate_data.sql` file, paste it into query window, run it.

By [Yalchin403](https://github.com/Yalchin403/)
