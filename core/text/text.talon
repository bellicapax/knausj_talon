#provide both anchored and unachored commands via 'over'
phrase <user.text>$:
    user.add_phrase_to_history(text)
    insert(text)
phrase <user.text> over:
    user.add_phrase_to_history(text)
    insert(text)
{user.prose_formatter} <user.prose>$: user.insert_formatted(prose, prose_formatter)
{user.prose_formatter} <user.prose> over: user.insert_formatted(prose, prose_formatter)
<user.format_code>+$: user.insert_many(format_code_list)
<user.format_code>+ over: user.insert_many(format_code_list)
<user.formatters> that: user.formatters_reformat_selection(user.formatters)
word <user.word>:
    user.add_phrase_to_history(word)
    insert(word)
proud <user.word>: user.insert_formatted(word, "CAPITALIZE_FIRST_WORD")
^(se | sea | see) plus$:
    insert("``")
    edit.left()
(se | sea | see) plus <user.prose>$:
    insert("``")
    edit.left()
    user.insert_formatted(prose, "PUBLIC_CAMEL_CASE")
^(se | sea | see) plus block$:
    insert("```cpp")
    edit.line_insert_down()
    edit.line_insert_down()
    insert("```")
    edit.up()
(se | sea | see) plus block <user.prose>$:
    insert("```cpp")
    edit.line_insert_down()
    edit.line_insert_down()
    insert("```")
    edit.up()
    user.insert_formatted(prose, "PUBLIC_CAMEL_CASE")
^wiki link$:
    insert("[[]]")
    edit.left()
    edit.left()
wiki link <user.prose>$:
    insert("[[]]")
    edit.left()
    edit.left()
    user.insert_formatted(prose, "CAPITALIZE_ALL_WORDS")
recent list: user.toggle_phrase_history()
recent close: user.phrase_history_hide()
recent repeat <number_small>:
    recent_phrase = user.get_recent_phrase(number_small)
    user.add_phrase_to_history(recent_phrase)
    insert(recent_phrase)
recent copy <number_small>: clip.set_text(user.get_recent_phrase(number_small))
select that: user.select_last_phrase()
before that: user.before_last_phrase()
scratch that: user.clear_last_phrase()
nope that was <user.formatters>: user.formatters_reformat_last(formatters)
^another$: insert(", ")
^theses$: insert("()")
^list item$: insert("- [ ] ")