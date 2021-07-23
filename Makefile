users:
	protoc --go_out=plugins=grpc:../../.. user/user.proto --govalidators_out=../../.. -I${GOPATH}/src -I.
	protoc --go_out=plugins=grpc:../../.. --govalidators_out=../../.. --grpc-gateway_out=grpc_api_configuration=user/user.yaml:../../.. user/user.proto  -I${GOPATH}/src -I.
	protoc --doc_out=${GOPATH}/src/github.com/budhip/exercise-user --doc_opt=html,proto-user-doc.html user/user.proto -I${GOPATH}/src -I.

errors:
	protoc --go_out=plugins=grpc:../../.. error.proto
