mkdir -p file-api/proto
rm -rf .file-api/proto/*
mkdir -p file-api/docs
rm -rf .file-api/docs/*
protoc \
    -I=. \
    --go_out=. \
    --go-grpc_out=. \
    --grpc-gateway_out=. \
    --openapiv2_out=file-api/docs \
    --openapiv2_opt logtostderr=true \
    file-api/api/*.proto
cp -r file-api/docs/file-api/api/* file-api/docs/
rm -rf file-api/docs/file-api