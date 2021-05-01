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

i.e.

```
when '-cpu', '--cpu'
  sys('./sys/cpu_name.sh')
```

> If you have a better way to call scripts, feel free to implement it.

Remember to add the new script to [docs](docs/README.md), [tilux](tilux) run_option function (both to the category and help, following the format) and [chmodx](chmodx).

## Contribution to GitHub steps

- Fork it!
- Create your branch: `git checkout -b my-new-branch`
- Commit your changes: `git commit -am 'Fixed typo'`
- Push to the branch: `git push origin my-new-branch`
- Submit a pull request

## Updating your Pull Request

Sometimes, a maintainer of an this list will ask you to edit your Pull Request before it is included.
This is normally due to spelling errors or because your PR didn't match the guidelines.
