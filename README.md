# Giant Swarm API Specification

## API Documentation

ReDoc renders pretty useful HTML-based documentation. Use this command to launch a server locally, from the root directory of this repository:

```nohighlight
make redoc
```

Then open [`http://localhost:8000/redoc/`](http://localhost:8000/redoc/).

### Alternatives

- https://bootprint.knappi.org/ provides a documentation viewer. Paste your `spec.yaml` there and it will generate a simple HTML documentation on one page.
- http://editor.swagger.io/ allows to edit YAML specs, preview a documentation and generate server and client code.


### YAML conventions

- Indent using spaces, not tabs
- 2 spaces per indentation level
- avoid quotes where possible

## API Spec Development

Modifying the spec is easy: Simply edit these files:

- `spec.yaml`:main file
- `definitions.yaml`: defines models used in request and response specs
- `parameters.yaml`: defines parameters used in requests

### Validating

The Makefile provides the `make validate` target.

You need the [Swagger CLI](https://www.npmjs.com/package/swagger-cli) installed, which you can install via `npm install -g swagger-cli`.
