# Unofficial XKCD API

There's one endpoint. It returns a JSON object of all matching XKCD stories: 

GET: `http://xkcd-unofficial-api.herokuapp.com/xkcd`

Accepted parameters: 

- `year`
- `month`
- `day`
- `safe_title`
- `title`
- `num`

For example: 

GET: `http://xkcd-unofficial-api.herokuapp.com/xkcd?year=2006`

