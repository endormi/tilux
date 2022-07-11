# Contribution Guidelines

Please ensure your pull request adheres to the following guidelines:

- Search previous suggestions before making a new one, as yours may be a duplicate.
- Make an individual pull request for each suggestion.
- New categories, or improvements to the existing categorization are welcome.
- Keep descriptions short and simple, but descriptive.
- End all descriptions with a full stop/period.
- Check your spelling and grammar.

## New scripts

For adding new scripts keep the code clear and concise.

If the script you're adding is under a folder, follow the format in `tools/def.rb`.

> If you have a better way to call scripts, feel free to implement it.

Remember to add the new script to [guide](GUIDE.md), [tilux](tilux) [tools/help_print.rb](tools/help_print.rb) (both to the category and help, following the format), [man/tilux.1](man/tilux.1) and [chmodx](chmodx).

> Working on making adding a new command faster and better. [#32](issues/32)

See [Updating Docs](#updating-docs) to copy `GUIDE.md`.

## New doc file

First, open up a new issue to ask if it is a good idea and helpful.

After getting a confirmation either create a `.rst` or `.md` file.

Try to keep the file clear and concise without spelling mistakes and add the file to `docs/source/index.rst` `toctree`.

## Updating Docs

In the case you are updating `docs/source/commands.md`, `docs/source/packages.md`, `GUIDE.md` and/or `PACKAGES.md`. Changes must be made in `GUIDE.md` and/or `PACKAGES.md`. Applying the changes also to `docs/source/` using `scripts/copy_content`.

With either `README.md` or `index.rst` the changes must be added manually (both files have the same content).

## Contribution to GitHub steps

- Fork it!
- Create your branch: `git checkout -b my-new-branch`
- Commit your changes: `git commit -am 'Fixed typo'`
- Push to the branch: `git push origin my-new-branch`
- Submit a pull request

## Updating your Pull Request

Sometimes, a maintainer of an this list will ask you to edit your Pull Request before it is included.
This is normally due to spelling errors or because your PR didn't match the guidelines.
