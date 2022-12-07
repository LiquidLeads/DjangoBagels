# Table of Contents

- [Headers](#headers)
- [Dividers & Breaks](#dividers--breaks)
	- [Line Breaks](#line-breaks)
- [Lists](#lists)


# Headers

## Syntax
```markdown
# h1

## h2

### h3

#### h4

##### h5
```

## Output

> # h1
>
> ## h2
>
> ### h3
>
> #### h4
>
> ##### h5





<br /><br /><br />

 ---

# Dividers & Breaks

Line breaks use the HTML `break` tag and, like most elements, must be inserted with a blank line on top and bottom of the break.



## Line Breaks

### Syntax: A Single Line Break
```markdown
...content.

<br />

#### New Section

Content.
```

### Output
> ...content.
> 
> <br />
> 
> #### New Section
> 
> Content.



<br /><br />

### Syntax: A Double Line Break
```markdown
...content.

<br /><br />

#### New Section

Content.
```

### Output
> ...content.
> 
> <br /><br />
> 
> #### New Section
> 
> Content.



<br /><br />

### Syntax: A Divider + Line Break
```markdown
...content.

<br />

---

#### New Section

Content.
```

### Output
> ...content.
> 
> <br />
> 
> ---
> 
> #### New Section
> 
> Content.






<br /><br /><br />

---

# Lists

## Numbered Lists
AKA "Ordered Lists"

### Markdown Syntax
```markdown
1. First Item
2. Second Item
3. Third Item
```

### HTML Syntax
```html
<ol>
	<li>
		First Item
	</li>
	<li>
		Second Item
	</li>
	<li>
		Third Item
	</li>
</ol>
```

### Output

> 1. First Item
> 2. Second Item
> 3. Third Item


<br /><br />

## Layered Lists
Ordered Lists with Sub-Items

### Markdown Syntax
```markdown
1. First Item
	- Sub-Item
2. Second Item
	- Sub-Item
		- Sub-Item
3. Third Item
```

### HTML Syntax
```html
<ol>
	<li>
		First Item
	</li>
	<ul>
		<li>
			Sub-Item
		</li>
	</ul>
	<li>
		Second Item
	</li>
	<ul>
		<li>
			Sub-Item
		</li>
		<ul>
			<li>
				Sub-Item
			</li>
		</ul>
	</ul>
	<li>
		Third Item
	</li>
</ol>
```

### Output
> 1. First Item
> 		- Sub-Item
> 2. Second Item
>		- Sub-Item
>			- Sub-Item
> 3. Third Item

