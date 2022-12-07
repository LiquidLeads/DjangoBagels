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