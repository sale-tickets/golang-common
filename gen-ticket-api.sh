mkdir -p ticket-api/proto
rm -rf .ticket-api/proto/*
mkdir -p ticket-api/docs
rm -rf .ticket-api/docs/*
protoc \
    -I=. \
    --go_out=. \
    --go-grpc_out=. \
    --grpc-gateway_out=. \
    --openapiv2_out=ticket-api/docs \
    --openapiv2_opt logtostderr=true \
    ticket-api/api/*.proto
cp -r ticket-api/docs/ticket-api/api/* ticket-api/docs/
rm -rf ticket-api/docs/ticket-api