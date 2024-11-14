#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Manim Animations*
  ]),
  numbering: "1",
)

#import "./style.typ": style_template
#show: doc => style_template(doc,)

= Intro

Visualizations are essential when trying to communicate scientific results. While text is often required to be mathematically precise, giving intuition and an initial understanding is far easier with a good picture. The `manim` package allows us to take this one step further with animations of mathematical concepts. If you have seen the Youtube channel #link("https://www.youtube.com/c/3blue1brown")[3blue1brown], these animations will look familiar because that is what he uses. Today we will learn some of the basics.

== Installation

The starting code for this lab comes with a `pyproject.toml` file that specifies the `manim` package as a dependency. On top of that, we are also going to use `jax` in this lab, which is also included in the pyproject.toml file.

=== python environment
If you decided to use `virtualenv` for this lab, that is to create an environment with `python -m venv [ENV_NAME]` and activate it with `source [ENV_NAME]/bin/activate`, then you can install the dependencies with `pip install -r pyproject.toml`.

If you have `uv` installed, you can also use `uv` to install the dependencies with `uv sync` to create the environment.

=== Extras
There will be some additional dependencies that you need depending on your operation system, check out the instruction on #link("https://docs.manim.community/en/stable/installation.html")[manim's website] to make sure you have all the prerequisites installed.

// NO CONDA IS ALLOWED, CONDA IS EVIL

To ensure `manim` is installed correctly, on the command line run `manim --version`. You should see some text like `Manim Community v[Version]`. 

= Basic Examples

== Creating Shapes

Create a file `quickstart.py`. Inside this file, add the following:

```py
import manim as mn 

class CreateShapes(mn.Scene):
  def construct(self):
    # your code here
```

Each animation is an `mn.Scene`. Each scene will have a `construct` function which includes all the code to create and animate the objects in the scene.

Now to create shapes. There are many common shapes available in manim, such as `Circle`, `Square`, `Triangle`, `RegularPolygon`, etc. Create a circle with `circle = mn.Circle()`. This just initializes the object in code, so to play the animation, call `self.play(mn.Create(circle))`.

(Alternate ways to create: https://docs.manim.community/en/stable/reference/manim.animation.creation.html)

Now that the code is written, we need to run it. In your terminal, run `manim -pql quickstart.py CreateShapes`. This should automatically open up a player where you can run the animation. It will also save it in `./media/videos/quickstart/480p15/`.

You can create multiple shapes by declaring multiple shapes, then calling them all at once like `self.play(mn.Create(shape1), mn.Create(shape2), ...)` and so on. Try a couple now, they should be created on top of each other.

== Transformations

The `manim` package can be used to automatically transform shapes into other shapes. Create another class `SquareToCircle`, and in its `construct` function create a circle and a square. Animate the square creation as in the previous section. To transform the square into a circle, use the `Transform(old_object, new_object)` function inside a `self.play` call. This will take the attributes of new_object and give them to old_object, modifying old_object.

For a more challenging task, create a new class `CircleConvergence`. The goal is to inscribe a n-gon inside a circle using `RegularPolygon`, then slowly transform it by adding more sides until the n-gon looks indistinguishable from the circle. Use the code block below as a skeleton.

```py
class CircleConvergence(mn.Scene):
  def construct(self):
    # initialize the circle and the list of regular n-gons
    # play the animation to create the circle and first n-gon (probably a triangle)

    # loop through the ngons, skipping the first one
    for ngon in sequence_of_ngons[1:]: 
        # transform the current ngon to the next ngon

```

== Attributes and Set Functions

In addition to different kinds of shapes, each shape also has a number of attributes that can either be defined at construction, or set later with an appropriate set function. Some options include border color, fill color, rotation, or position. For example, suppose we have a `circle` and a `square`. Then we can:

`circle.set_fill(mn.PINK, opacity=0.5) # set the color fill and opacity`

`circle.rotate(mn.PI / 3) # rotate the circle`

`square.next_to(circle, mn.DOWN, buff=0.5) # put square below circle, with 0.5 buffer`

`circle.shift(mn.LEFT) # shift the circle left`

Construct a few shapes and play around with all of these. All these are static attributes of the shapes, but we can also animate them. For any of these calls, we can prepend `.animate` to return an animation that will go in a self.play call. For example, `self.play(circle.animate.rotate(mn.PI / 3))` will animate the rotation of circle.

Construct 4 different shapes in grid with different colors and rotations. Make some of the attributes initial, and some animated.

Update the `CircleConvergence` script to display the area of the n-gon as it trasnforms, which is an estimate of $pi$. As the number of sides increase, the area should approach $pi$. You can do this with a text object `label = mn.Text(f'pi estimate{area:0.5f}')` which is created with `mn.Write(label)` inside a play call.

== Changing rendering configuration

You may notice the output video is kind of low res and choppy, that is not because of manim sucks but because of the default rendering configuration. You can change the rendering configuration by creating a `manim.cfg` file in the same directory as your script. Here is an example of a `manim.cfg` file that calls the `-pql` flags that we were using before:

```
[CLI]
preview = True
quality = low_quality
```

Modify the `manim.cfg` to set the `background_color` to `WHITE` and the quality to `high_quality`. Then you can run `manim <file.py> <Scene class>` to render the new content.

= Animating your gradient descent with `jax` and `manim`

Here is #link("https://docs.manim.community/en/stable/examples.html#argminexample")[a relevant example] from the `manim-community` gallery.

== Step 1: Create the target function with `jax`

The first step is to create the target function that you want to minimize. Go ahead and pick your favorite function that has a scalar input and a scalar output. You can use `jax` to create the function such that later on when we need the gradient, you can just use `jax.grad` to get the gradient.

== Step 2: Plot the static elements

We need to add the axes, labels, and the graph of the target function. Pick sensible values for the ranges of your graph depending on your chosen target function. Construct axes with https://docs.manim.community/en/stable/reference/manim.mobject.graphing.coordinate_systems.Axes.html

```py
ax = mn.Axes( 
  # fill in
)
graph = ax.plot( # ...
```
Then plot the target function using `ax.plot`.
Since these are static elements, we can add them with `self.add(ax, graph)`, rather than animating them.

== Step 3: Initialize a point in the domain

Next, let's draw an initialization point in the domain. Generate a random number in the x domain using jax.random, or pick a point. Use the target_function to get the associated y value.

To plot this point, we will use the `Dot` class. It takes a Point3D in the constructor, which we need to convert from the x/y coordinates on the axes using the function `ax.coords_to_point(x,y)` or `ax.c2p(x,y)` for short. Add the point to the scene.

== Step 4: Calculate the gradient

Calculate the gradient at the initial point using `jax.grad` on `target_function`, and the update step of gradient descent. Use a manim `Arrow` to represent the gradient update from the point at iteration $x_i$ to $x_(i+1)$. When making the arrow, make sure to again use ax.c2p to convert x/y coordinates to points, and use `buff=0`. It will look something like:

```py
current_grad = # calculate gradient
new_x = # update step of gradient descent
arrow = mn.Arrow(
  # arrow constructor arguments
)
```

After this, you can create the arrow to show where the point will be going in that animation.

== Step 5: Point tracker

We will use a `ValueTracker` to allow for animating this point along the target function curve.

```py
t = mn.ValueTracker(initial_x)
```

Additionally, we need to make our `Dot` object follow the curve as it is updated. To do this, we will use the `add_updater` function as in https://docs.manim.community/en/stable/examples.html#argminexample. 

== Step 6: Run the gradient descent

Now we will run the gradient descent. We want to loop $n$ times, and in each step, calculate the gradient, calculate the update step of gradient descent, animate gradient vector, then move the point with `self.play(t.animate.set_value(new_x))`. If the updater was set properly on the dot, it will follow the tracker. To move the gradient arrow each time, you can call `arrow.put_start_and_end_on` with the appropriate arguments.

== Step 7: Speed up the animation

In order to converge, we probably need to run thousands of steps. It would be a pain to keep it at the same speed when we are illustrating the idea for that long. So the last step is to speed up the animation.

The can be done by setting the `run_time` argument of `self.play` to a smaller value.

== Further Animations

What would you like to animate?

- Something from your project?
- The Nintendo GameCube opening animation? 
- Some kind of 3d surface? https://docs.manim.community/en/stable/reference/manim.mobject.three_d.three_dimensions.Surface.html
- etc.

