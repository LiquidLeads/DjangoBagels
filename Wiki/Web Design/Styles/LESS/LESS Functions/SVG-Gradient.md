# SVG Gradients

## Summary

Generates SVG Gradients with multiple color stops.

<br />

## Details & Definitions

The __SVG-Gradient Function__ generates __Multi-Stop SVG Gradients__ within the stylesheet using a `url(data:image/svg+xml...)` 'link' to produce the output.

### What are 'Stops'?

A *Multi-Stop* Gradient is, as defined in the summary, a gradient with multiple __color stops__. So, what is a __color stop__? The easiest way to answer thay is with a screenshot from Adobe Illustrator:

<img id="Illustrator SS01"
	 src="../.assets/img"
	 alt="Illustrator Gradient"
	 width="60%"
	 height="auto"
	 />
	 

<br /><br />

---

# Usage

It must have at least three parameters. First parameter specifies gradient type and direction and remaining parameters list colors and their positions. The position of first and last specified color are optional, remaining colors must have positions specified.

### Direction Parameter Values
- `to bottom`
- `to right`
- `to bottom right`
- `to top right`
- `ellipse`
- `ellipse at center`

The direction can be specified as both escaped value ~'to bottom' and space separated list of words to bottom.

The direction must be followed by two or more color stops. They can be supplied either inside a list or you can specify each color stops in separate argument.

Parameters - colors stops in list:

escaped value or list of identifiers: direction
list - all colors and their positions in list
Parameters - color stops in arguments:

escaped value or list of identifiers: direction
color [percentage] pair: first color and its relative position (position is optional)
color percent pair: (optional) second color and its relative position

color percent pair: (optional) n-th color and its relative position
color [percentage] pair: last color and its relative position (position is optional)
Returns: url with "URI-Encoded" svg gradient.



### Example: Color Stops in `@list` Variable

```less
div {
  @list: red, green 30%, blue;
  background-image: svg-gradient(to right, @list);
}
```


### Equivalent: Color Stops in Argument

```less
div {
  background-image: svg-gradient(to right, red, green 30%, blue);
}
```

## Output

Both of the above examples will output the following:

```less
div {
  background-image: url('data:image/svg+xml,%3C%3Fxml%20version%3D%221.0%22%20%3F%3E%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20version%3D%221.1%22%20width%3D%22100%25%22%20height%3D%22100%25%22%20viewBox%3D%220%200%201%201%22%20preserveAspectRatio%3D%22none%22%3E%3ClinearGradient%20id%3D%22gradient%22%20gradientUnits%3D%22userSpaceOnUse%22%20x1%3D%220%25%22%20y1%3D%220%25%22%20x2%3D%22100%25%22%20y2%3D%220%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23ff0000%22%2F%3E%3Cstop%20offset%3D%2230%25%22%20stop-color%3D%22%23008000%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%230000ff%22%2F%3E%3C%2FlinearGradient%3E%3Crect%20x%3D%220%22%20y%3D%220%22%20width%3D%221%22%20height%3D%221%22%20fill%3D%22url(%23gradient)%22%20%2F%3E%3C%2Fsvg%3E');
}
```









```less

```


<!-- 
"/Dev/Projects/DjangoBagels/Wiki/Web Design/Styles/LESS/LESS Functions/SVG-Gradient.md"
-->
