# Power BI measures

These measures reference the report's existing `Total Sales` and `Total Profit` measures.

```dax
Profit Margin = DIVIDE([Total Profit], [Total Sales])
```

Format as a percentage.

```dax
Profit Bar Color =
IF ( [Total Profit] < 0, "#B54747", "#364B59" )
```

Use as the field value for bar color or Total Profit font color.
