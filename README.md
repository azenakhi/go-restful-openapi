# go-bindata
```
$ go get github.com/jteeuwen/go-bindata/...
$ go get github.com/elazarl/go-bindata-assetfs/...
```

### Create a bindata.go file, which contains the embedded data.
```
$ go-bindata swagger-ui/...
```

### main.go
```
import (
	"net/http"
	"github.com/elazarl/go-bindata-assetfs"
)

func main() {
	http.Handle("/", http.FileServer(&assetfs.AssetFS{Asset: Asset, AssetDir: AssetDir, AssetInfo: AssetInfo, Prefix: "swagger-ui"}))
	http.ListenAndServe(":3000", nil)
}
```

### Test
```
$ go install github.com/azenakhi/go-restful-swagger/...
$ go-restful-swagger
```
