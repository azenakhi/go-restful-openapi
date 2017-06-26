# go-bindata
```
$ go get github.com/jteeuwen/go-bindata/...
$ go get github.com/elazarl/go-bindata-assetfs/...
```

```
$ go-bindata data/...
```

```
import (
	"net/http"
	"github.com/elazarl/go-bindata-assetfs"
)

func main() {
	http.Handle("/", http.FileServer(&assetfs.AssetFS{Asset: Asset, AssetDir: AssetDir, AssetInfo: AssetInfo, Prefix: "swagger-ui"}))
}
```

```
$ go github.com/azenakhi/go-restful-swagger/...
```
