# Publication-Ready Plotting Styles

Small, reusable styles for MATLAB exports, Matplotlib figures, and Jupyter notebook callouts.

## Files

- `style.m` sets session-wide MATLAB defaults through `groot`.
- `presentation.mplstyle` is for final Matplotlib exports with LaTeX rendering.
- `notebook.mplstyle` is a lighter Matplotlib style for quick Jupyter work.
- `callouts.css` adds colored callout boxes for notebook HTML output.

## Python / Matplotlib

Use `presentation.mplstyle` when you want LaTeX-rendered labels in exported figures.

```python
from pathlib import Path
import matplotlib.pyplot as plt

styles = Path("/path/to/styles")
plt.style.use(styles / "presentation.mplstyle")

fig, ax = plt.subplots()
ax.plot([0, 1], [0, 1])
ax.set_xlabel(r"$x$")
ax.set_ylabel(r"$y$")

fig.savefig("figure.pdf", bbox_inches="tight")
```

`presentation.mplstyle` enables `text.usetex` and loads `amsmath`, `amssymb`, `siunitx`, and `physics`.

Use `notebook.mplstyle` for quick plotting in Jupyter when you do not want a LaTeX dependency.

```python
from pathlib import Path
import matplotlib.pyplot as plt

styles = Path("/path/to/styles")
plt.style.use(styles / "notebook.mplstyle")

%config InlineBackend.figure_formats = ["svg", "pdf"]
```

## MATLAB

`style()` changes the defaults for the current MATLAB session.

```matlab
style();

x = linspace(0, 1, 100);
plot(x, x.^2);
xlabel('$x$');
ylabel('$y$');

exportgraphics(gcf, 'figure.pdf', 'ContentType', 'vector');
```

## Jupyter Callouts

Load `callouts.css` once in a notebook:

```python
from pathlib import Path
from IPython.display import HTML

styles = Path("/path/to/styles")
HTML(f"<style>{(styles / 'callouts.css').read_text()}</style>")
```

Then render a callout box:

```python
HTML("""
<div class='callout callout-note'>
  <div class='callout-header'>
    <span class='callout-icon'>i</span>
    Note
  </div>
  <div class='callout-content'>
    This works well for small notes, tips, and warnings inside notebooks.
  </div>
</div>
""")
```

Available variants: `callout-note`, `callout-tip`, `callout-important`, `callout-warning`, and `callout-caution`.

See `callouts-demo.ipynb` for a small notebook preview.
