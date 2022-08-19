# MD002, MD024, MD041 are unique to this project
# MD40 is probably as well

all

# First header should be a top level header.
# Same reason as for MD041
exclude_rule 'MD002'

rule 'MD013', code_blocks: false

# Multiple headers with the same content.
# This is due to docs/
exclude_rule 'MD024'

# Trailing punctuation in header.
# I have ? in header
exclude_rule 'MD026'

# Lists should be surrounded by blank lines.
# I prefer to have lists without blank lines
exclude_rule 'MD032'

# Inline HTML
exclude_rule 'MD033'

# Fenced code blocks should have a language specified.
# Usually I would enable this, but language code block styling
# in docs/ is not my favorite
exclude_rule 'MD040'

# First line in file should be a top level header.
# I have ASCII art instead of an header
exclude_rule 'MD041'
