import pygmt

# Define the region to plot (Pakistan and surrounding areas)
region = [55, 75, 20, 40]  # [xmin, xmax, ymin, ymax]

# Create a figure
fig = pygmt.Figure()

# Add a basemap
fig.basemap(region=region, projection="M6i", frame=True)

# Add coastlines
# fig.coast(shorelines=True, borders=[1, 2], water="skyblue", land="lightgray")
fig.coast(shorelines=True, borders=[1, 2], water="skyblue", land="white")

# Add a title
fig.text(text="Map of Pakistan and Surrounding Regions", x=70, y=38, font="16p,Helvetica-Bold", justify="CM")

# Show the figure
fig.show()

# Save the figure
fig.savefig("pakistan_map.png")
