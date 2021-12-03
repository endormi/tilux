Installation
============

How to install `tilux`?

Installing `tilux` is very easy.

Clone the project: ::

   git clone https://github.com/endormi/tilux.git

Run `build`:

**NOTE**: Installing with `virtualenv` is recommended.

.. code-block:: sh

   bash build

Using virtualenv
----------------

Run `build`:

.. code-block:: sh

   bash build venv

After `build` (if you installed with `virtualenv`):

.. code-block:: sh

   . ./venv/bin/activate

Add the `venv` script to alias:

.. code-block:: sh

   ./scripts/add_alias_venv

Activate `virtualenv`:

.. code-block:: sh

   tvenv

Deactivate:

.. code-block:: sh

   deactivate

Running tilux
-------------

Run `tilux`:

.. code-block:: sh

   ./tilux

You can also arguments to run `tilux`:

.. code-block:: sh

   ./tilux monitoring -c

Run `--help`:

.. code-block:: sh

   ./tilux --help

If you run the `add_alias` script inside scripts folder:

.. code-block:: sh

   ./scripts/add_alias

You can run tilux by simply running:

**NOTE**: the command will CD into the `tilux` folder location.

.. code-block:: sh

   tilux
